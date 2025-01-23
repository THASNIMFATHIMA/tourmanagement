
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

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/tour_travel";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "2000";
    private static final Logger logger = Logger.getLogger(BookingServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD)) {
            int bookingId = insertBooking(conn, request);
            insertPassengers(conn, bookingId, request);
            
            HttpSession session = request.getSession();
            session.setAttribute("bookingId", bookingId);
            session.setAttribute("name", request.getParameter("name"));
            session.setAttribute("from", request.getParameter("from"));
            session.setAttribute("destination", request.getParameter("destination"));
            session.setAttribute("days", request.getParameter("days"));
            session.setAttribute("packageType", request.getParameter("packageType"));
            session.setAttribute("passengers", request.getParameter("passengers"));
            session.setAttribute("departureDate", request.getParameter("departureDate"));
            session.setAttribute("returnDate", request.getParameter("returnDate"));
            session.setAttribute("totalAmount", request.getParameter("totalAmount"));
            session.setAttribute("discount", request.getParameter("discount"));
            session.setAttribute("distance", request.getParameter("distance"));
            session.setAttribute("packagePrice", request.getParameter("packagePrice"));
            session.setAttribute("aadhaarNumber", request.getParameter("aadhaar")); 
            
            response.sendRedirect("payment.jsp");
        } catch (SQLException e) {
            logger.severe("Database error: " + e.getMessage());
            throw new ServletException("Database error", e);
        }
    }

    private int insertBooking(Connection conn, HttpServletRequest request) throws ServletException, SQLException {
        String bookingQuery = "INSERT INTO bookings (name, aadhaar, passengers, destination, distance, days, package_type, departure_date, return_date, promocode, transportation, total_amount, package_price, discount, from_location, hotel_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement bookingPstmt = conn.prepareStatement(bookingQuery, Statement.RETURN_GENERATED_KEYS)) {
            bookingPstmt.setString(1, request.getParameter("name"));
            bookingPstmt.setString(2, request.getParameter("aadhaar"));
            bookingPstmt.setInt(3, Integer.parseInt(request.getParameter("passengers")));
            bookingPstmt.setString(4, request.getParameter("destination"));
            bookingPstmt.setDouble(5, Double.parseDouble(request.getParameter("distance")));
            bookingPstmt.setInt(6, Integer.parseInt(request.getParameter("days")));
            bookingPstmt.setString(7, request.getParameter("packageType"));
            bookingPstmt.setString(8, request.getParameter("departureDate"));
            bookingPstmt.setString(9, request.getParameter("returnDate"));
            bookingPstmt.setString(10, request.getParameter("promocode"));
            bookingPstmt.setString(11, request.getParameter("transportation"));
            bookingPstmt.setDouble(12, Double.parseDouble(request.getParameter("totalAmount").replace("₹", "").trim()));
            bookingPstmt.setDouble(13, Double.parseDouble(request.getParameter("packagePrice").replace("₹", "").trim()));
            bookingPstmt.setDouble(14, Double.parseDouble(request.getParameter("discount").replace("₹", "").trim()));
            bookingPstmt.setString(15, request.getParameter("from"));
            bookingPstmt.setString(16, request.getParameter("hotel"));
            
            bookingPstmt.executeUpdate();
            try (ResultSet generatedKeys = bookingPstmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                } else {
                    throw new ServletException("Failed to retrieve booking ID");
                }
            }
        } catch (SQLException e) {
            logger.severe("Database error: " + e.getMessage());
            throw new ServletException("Database error", e);
        }
    }

   
    private void insertPassengers(Connection conn, int bookingId, HttpServletRequest request) throws ServletException, SQLException {
        String[] passengerNames = request.getParameterValues("passenger-name[]");
        String[] passengerAges = request.getParameterValues("passenger-age[]");
        String passengerQuery = "INSERT INTO passengers (booking_id, name, age) VALUES (?, ?, ?)";
        try (PreparedStatement passengerPstmt = conn.prepareStatement(passengerQuery)) {
            for (int i = 0; i < passengerNames.length; i++) {
                passengerPstmt.setInt(1, bookingId);
                passengerPstmt.setString(2, passengerNames[i]);
                passengerPstmt.setString(3, passengerAges[i]);
                passengerPstmt.addBatch();
            }
            passengerPstmt.executeBatch(); // Execute the batch update
        } catch (SQLException e) {
            logger.severe("Database error: " + e.getMessage());
            throw new ServletException("Database error", e);
        }
    }
}

    
