<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Transactions</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light background color */
            color: #333;
            text-align: center;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #00796b; /* Teal color for the heading */
        }

        .transaction {
            background-color: #ffffff; /* White background for each transaction */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 10px auto;
            padding: 15px;
            text-align: left;
            width: 80%; /* Adjust width as needed */
            max-width: 600px; /* Ensure it does not get too wide */
        }

        .transaction p {
            margin: 5px 0;
        }

        .transaction strong {
            color: #00796b; /* Teal color for labels */
        }

        .back-link, .download-link {
            display: inline-block;
            margin: 20px;
            color: #007bff; /* Blue color for links */
            text-decoration: none;
            font-size: 1.1em;
        }

        .back-link:hover, .download-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Last 10 Transactions</h2>
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "Kaviya");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM transactions WHERE customer_id=(SELECT customer_id FROM customer WHERE account_no=?) ORDER BY transaction_date DESC LIMIT 10");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
    %>
        <div class="transaction">
            <p><strong>Date:</strong> <%= rs.getTimestamp("transaction_date") %></p>
            <p><strong>Amount:</strong> <%= rs.getDouble("amount") %></p>
            <p><strong>Type:</strong> <%= rs.getString("type") %></p>
        </div>
    <%
        }
        con.close(); // Always close the connection
    %>
    <div>
        <a href="viewCustomers.jsp" class="back-link">Back to Dashboard</a>
        <a href="DownloadPDFServlet" class="download-link">Download Transactions as PDF</a>
    </div>
</body>
</html>
