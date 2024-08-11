<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideIn {
            from { transform: translateY(-20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light gradient background */
            color: #333; /* Dark text for contrast */
            text-align: center;
            padding: 50px 20px;
            animation: fadeIn 2s ease-in-out;
        }

        h2 {
            font-size: 2.5em;
            margin-bottom: 30px;
            animation: slideIn 1s ease-in-out;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px; /* Space between the boxes */
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque white */
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Lighter shadow */
            animation: slideIn 1.5s ease-in-out;
            max-width: 500px;
            margin: 0 auto;
        }

        a {
            text-decoration: none;
            color: #ffffff;
            padding: 15px 30px;
            border-radius: 5px;
            margin: 0;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            font-size: 1.2em;
            display: block; /* Full width for vertical alignment */
            width: 100%; /* Ensures buttons take full width */
        }

        a.register {
            background-color: #4caf50; /* Lighter green */
        }

        a.list {
            background-color: #ffeb3b; /* Light yellow */
        }

        a.view {
            background-color: #03a9f4; /* Light blue */
        }

        a.logout {
            background-color: #f44336; /* Light red */
        }

        a:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        a.register:hover {
            background-color: #388e3c; /* Darker green */
        }

        a.list:hover {
            background-color: #fbc02d; /* Darker yellow */
        }

        a.view:hover {
            background-color: #0288d1; /* Darker blue */
        }

        a.logout:hover {
            background-color: #c62828; /* Darker red */
        }
    </style>
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %></h2>
    <div class="container">
        <a href="registerCustomer.jsp" class="register">Register Customer</a>
        <a href="listCustomer" class="list">List Customer</a>
        <a href="viewCustomers.jsp" class="view">View Customers</a>
        <a href="logout.jsp" class="logout">Logout</a>
    </div>
</body>
</html>
