package com.thasnimf;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DatabaseConfig dbConfig;

    public SignUpServlet() {
        dbConfig = new DatabaseConfig();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String username = request.getParameter("textName");
        String email = request.getParameter("Email");
        String phoneNo = request.getParameter("telephone");
        String password = request.getParameter("textPwd");
        try (Connection con = dbConfig.getConnection()) {
            PreparedStatement pst = con.prepareStatement("INSERT INTO users (name, email, phone_number, password) VALUES (?, ?, ?, ?)");
            pst.setString(1, username);
            pst.setString(2, email);
            pst.setString(3, phoneNo);
            pst.setString(4, password);
            int rowCount = pst.executeUpdate();

            if (rowCount > 0) {
                response.sendRedirect("logn.jsp");
            } else {
                response.sendRedirect("signup.jsp");
            }
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
}

class DatabaseConfig {
    private String dbUrl = "jdbc:mysql://localhost:3306/tour_travel";
    private String dbUsername = "root";
    private String dbPassword = "2000";

    public Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    }
}

		
	


