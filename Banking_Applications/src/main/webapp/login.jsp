<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background :linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light grey background */
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
        }

        h2 {
            color: #00796b; /* Teal color for the heading */
            margin-bottom: 20px;
        }

        form {
            background-color: #ffffff; /* White background for the form */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
            padding: 20px;
            margin: auto;
            max-width: 400px; /* Restrict the width of the form */
        }

        label {
            display: block;
            font-size: 1.1em;
            margin-bottom: 10px;
            color: #555;
        }

        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        input[type="submit"] {
            background-color: #007bff; /* Blue color for the button */
            color: white;
            border: none;
            padding: 15px 25px;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h2>Admin Login</h2>
    <form action="AdminLoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" placeholder="Enter your username"><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password"><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
