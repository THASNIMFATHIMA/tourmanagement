package com.thasnim;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            String dbUrl = "jdbc:mysql://localhost:3306/tour_travel";
            String dbUser = "root";
            String dbPassword = "2000";
            Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

            // Retrieve login credentials
            String name = request.getParameter("textName");
            String password = request.getParameter("textPwd");

            // Prepare SQL query
            String query = "SELECT * FROM users WHERE name = ? AND password = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, password);

            // Execute query
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Create user session
                HttpSession session = request.getSession();
                session.setAttribute("username", name);

                // Redirect to home page
                response.sendRedirect("home.jsp");
            } else {
                // Redirect to login page with error message
                request.setAttribute("error", "Invalid username or password");
                request.getRequestDispatcher("logn.jsp").forward(request, response);
            }

            // Close database resources
            rs.close();
            pst.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
