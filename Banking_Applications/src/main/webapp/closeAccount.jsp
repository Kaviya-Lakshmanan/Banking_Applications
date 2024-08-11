<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Close Account</title>
    <style>
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideUp {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light grey gradient */
            color: #333;
            text-align: center;
            padding: 50px;
            animation: fadeIn 2s ease-in-out;
            background-image: url('background-image.jpg'); /* Add your image here */
            background-size: cover;
            background-position: center;
        }

        h2 {
            font-size: 2em;
            margin-bottom: 20px;
            animation: slideUp 1s ease-in-out;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque white */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
            animation: slideUp 1.5s ease-in-out;
        }

        label {
            font-size: 1.2em;
            margin-bottom: 20px;
            display: block;
            color: #555;
        }

        input[type="submit"] {
            background-color: #dc3545; /* Red for confirmation */
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin-right: 15px;
        }

        input[type="submit"]:hover {
            background-color: #c82333;
            transform: scale(1.05);
        }

        a {
            text-decoration: none;
            color: #007bff; /* Blue for the cancel option */
            font-size: 1.1em;
            transition: color 0.3s ease, text-shadow 0.3s ease;
        }

        a:hover {
            color: #0056b3;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <h2>Close Account</h2>
    <form action="CloseAccountServlet" method="post">
        <label for="confirm">Are you sure you want to close your account?</label><br><br>
        <input type="submit" value="Yes">
        <a href="customerLogin.jsp">No</a>
    </form>
</body>
</html>
