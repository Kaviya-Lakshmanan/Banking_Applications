<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
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
            background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light blue gradient */
            color: #333;
            text-align: center;
            padding: 20px;
            animation: fadeIn 2s ease-in-out;
            height: 80vh; /* Full viewport height */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; /* Stack elements vertically */
        }

        .image-container {
            margin-bottom: 30px; /* Space between image and heading */
        }

        .image-container img {
            width: 150px; /* Adjust size as needed */
            border-radius: 50%; /* Circle shape */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for depth */
            animation: slideUp 1s ease-in-out;
        }

        h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
            animation: slideUp 1s ease-in-out;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque white */
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
            animation: slideUp 1.5s ease-in-out;
            max-width: 400px;
            width: 100%;
            text-align: left; /* Align text left for form elements */
        }

        label {
            font-size: 1em;
            margin-bottom: 8px;
            display: block;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 22px); /* Full width minus padding */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 1em;
            box-sizing: border-box; /* Include padding in width calculation */
        }

        input[type="submit"] {
            background-color: #2196f3; /* Blue for login */
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #1976d2;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="image-container">
        <img src="login.jpeg" alt="Customer Image"> <!-- Add your image source -->
    </div>
    <h2>Customer Login</h2>
    <form action="CustomerLoginServlet" method="post">
        <label for="account_no">Account No:</label>
        <input type="text" id="account_no" name="account_no"><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
