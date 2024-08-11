<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Customers</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background : linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light grey background */
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
        }

        h2 {
            color: #00796b; /* Teal color for the heading */
            margin-bottom: 30px;
        }

        .dashboard-info {
            background-color: #ffffff; /* White background for the info box */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: auto;
            max-width: 500px; /* Restrict the width of the info box */
            text-align: left;
        }

        .dashboard-info p {
            font-size: 1.2em;
            margin: 10px 0;
        }

        .nav-links {
            margin-top: 30px;
        }

        .nav-links a {
            color: #007bff; /* Blue color for links */
            text-decoration: none;
            font-size: 1.1em;
            margin: 0 15px;
        }

        .nav-links a:hover {
            text-decoration: underline;
            color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <h2>Welcome, Customer</h2>
    <div class="dashboard-info">
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "Kaviya");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM customer WHERE account_no=?");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            out.print("<p><strong>Account No:</strong> " + rs.getString("account_no") + "</p>");
            out.print("<p><strong>Balance:</strong> $" + String.format("%.2f", rs.getDouble("initial_balance")) + "</p>");
        }
    %>
    </div>
    <div class="nav-links">
        <a href="viewTransactions.jsp">View Transactions</a> |
        <a href="deposit.jsp">Deposit</a> |
        <a href="withdraw.jsp">Withdraw</a> |
        <a href="closeAccount.jsp">Close Account</a> |
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
