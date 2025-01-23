package com.thasnim;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;
import java.util.logging.Logger;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/tour_travel";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "2000";
    private static final Logger logger = Logger.getLogger(PaymentServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
            conn.setAutoCommit(false);

            HttpSession session = request.getSession();
            Integer bookingId = (Integer) session.getAttribute("bookingId");

            if (bookingId == null) {
                logger.severe("Booking ID is null");
                response.sendRedirect("error.jsp");
                return;
            }

            String paymentOption = request.getParameter("paymentOption");

            if (paymentOption == null || paymentOption.isEmpty()) {
                logger.severe("Invalid payment option");
                response.sendRedirect("error.jsp");
                return;
            }

            switch (paymentOption) {
                case "creditDebitCard":
                    String cardNumber = request.getParameter("cardNumber");
                    String expirationDate = request.getParameter("expirationDate");
                    String cvv = request.getParameter("cvv");
                    String cardHolderName = request.getParameter("cardHolderName");

                    if (cardNumber == null || expirationDate == null || cvv == null || cardHolderName == null) {
                        logger.severe("Invalid credit/debit card details");
                        response.sendRedirect("error.jsp");
                        return;
                    }
                    processCreditDebitCardPayment(conn, bookingId, cardNumber, expirationDate, cvv, cardHolderName);
                    break;
                case "netBanking":
                    String bankName = request.getParameter("bankName");
                    String accountNumber = request.getParameter("accountNumber");
                    String ifscCode = request.getParameter("ifscCode");

                    if (bankName == null || accountNumber == null || ifscCode == null) {
                        logger.severe("Invalid net banking details");
                        response.sendRedirect("error.jsp");
                        return;
                    }
                    processNetBankingPayment(conn, bookingId, bankName, accountNumber, ifscCode);
                    break;
                case "upi":
                    String upiId = request.getParameter("upiId");

                    if (upiId == null) {
                        logger.severe("Invalid UPI ID");
                        response.sendRedirect("error.jsp");
                        return;
                    }
                    processUPayment(conn, bookingId, upiId);
                    break;
                default:
                    logger.severe("Invalid payment option");
                    response.sendRedirect("error.jsp");
                    return;
            }

            updateBookingStatus(conn, bookingId, "paid");
            // Retrieve distance and aadhaar number from session attributes set in BookingServlet
            String distance = (String) session.getAttribute("distance");
            String aadhaarNumber = (String) session.getAttribute("aadhaarNumber");

            // Set payment status and payment method
            String paymentStatus = "paid";
            String paymentMethod = request.getParameter("paymentOption");

            // Set attributes for confirmation page
            session.setAttribute("distance", distance);
            session.setAttribute("paymentStatus", paymentStatus);
            session.setAttribute("paymentMethod", paymentMethod);
            session.setAttribute("aadhaarNumber", aadhaarNumber);

            conn.commit();
            response.sendRedirect("confirmation.jsp");
        } catch (SQLException e) {
            if (conn != null) {
                try {
                    conn.rollback();
                } catch (SQLException ex) {
                    logger.severe("Error rolling back transaction: " + ex.getMessage());
                }
            }
            logger.severe("Database error: " + e.getMessage());
            throw new ServletException("Database error", e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    logger.severe("Error closing database connection: " + e.getMessage());
                }
            }
        }
    }

    private void processCreditDebitCardPayment(Connection conn, int bookingId, String cardNumber, String expirationDate, String cvv, String cardHolderName) throws SQLException {
        String paymentQuery = "INSERT INTO payments (booking_id, payment_method, card_number, expiration_date, cvv, card_holder_name) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement paymentPstmt = conn.prepareStatement(paymentQuery)) {
            paymentPstmt.setInt(1, bookingId);
            paymentPstmt.setString(2, "Credit/Debit Card");
            paymentPstmt.setString(3, cardNumber);
            paymentPstmt.setString(4, expirationDate);
            paymentPstmt.setString(5, cvv);
            paymentPstmt.setString(6, cardHolderName);
            paymentPstmt.executeUpdate();
        }
    }

    private void processNetBankingPayment(Connection conn, int bookingId, String bankName, String accountNumber, String ifscCode) throws SQLException {
        String paymentQuery = "INSERT INTO payments (booking_id, payment_method, bank_name, account_number, ifsc_code) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement paymentPstmt = conn.prepareStatement(paymentQuery)) {
            paymentPstmt.setInt(1, bookingId);
            paymentPstmt.setString(2, "Net Banking");
            paymentPstmt.setString(3, bankName);
            paymentPstmt.setString(4, accountNumber);
            paymentPstmt.setString(5, ifscCode);
            paymentPstmt.executeUpdate();
        }
    }
    
    private void processUPayment(Connection conn, int bookingId, String upiId) throws SQLException {
        String paymentQuery = "INSERT INTO payments (booking_id, payment_method, upi_id) VALUES (?, ?, ?)";
        try (PreparedStatement paymentPstmt = conn.prepareStatement(paymentQuery)) {
            paymentPstmt.setInt(1, bookingId);
            paymentPstmt.setString(2, "UPI");
            paymentPstmt.setString(3, upiId);
            paymentPstmt.executeUpdate();
        }
    }

    private void updateBookingStatus(Connection conn, int bookingId, String status) throws SQLException {
        String updateQuery = "UPDATE bookings SET payment_status = ? WHERE id = ?";
        try (PreparedStatement updatePstmt = conn.prepareStatement(updateQuery)) {
            updatePstmt.setString(1, status);
            updatePstmt.setInt(2, bookingId);
            updatePstmt.executeUpdate();
            logger.info("Booking status updated to " + status + " for booking ID " + bookingId);
        }
    }

}


