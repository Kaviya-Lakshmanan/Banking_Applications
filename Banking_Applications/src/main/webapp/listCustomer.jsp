<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Customers</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light teal gradient */
        color: #333;
        text-align: center;
        padding: 20px;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        min-height: 80vh; /* Full viewport height */
    }

    h2 {
        font-size: 2em;
        margin-bottom: 20px;
        color: #00796b;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #fff;
        border-radius: 10px;
        overflow: hidden;
    }

    th, td {
        text-align: left;
        padding: 12px 15px;
    }

    th {
        background-color: #00796b;
        color: white;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #d1e7e0;
    }

    .back-link {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #00796b;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .back-link:hover {
        background-color: #004d40;
        transform: scale(1.05);
    }
</style>
</head>
<body>
    <h2>Customer List</h2>
    <table>
        <tr>
            <th>Customer ID</th>
            <th>Full Name</th>
            <th>Address</th>
            <th>Mobile No</th>
            <th>Email ID</th>
            <th>Account Type</th>
            <th>Initial Balance</th>
            <th>Date of Birth</th>
            <th>Account No</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "Kaviya");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM customer");
                
                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getInt("customer_id") %></td>
                        <td><%= rs.getString("full_name") %></td>
                        <td><%= rs.getString("address") %></td>
                        <td><%= rs.getString("mobile_no") %></td>
                        <td><%= rs.getString("email_id") %></td>
                        <td><%= rs.getString("account_type") %></td>
                        <td><%= rs.getDouble("initial_balance") %></td>
                        <td><%= rs.getDate("dob") %></td>
                        <td><%= rs.getString("account_no") %></td>
                    </tr>
        <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <a href="adminDashboard.jsp" class="back-link">Back to Dashboard</a>
</body>
</html>
