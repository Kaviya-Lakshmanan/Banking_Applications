<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Customer</title>
    <style>
        @keyframes backgroundAnimation {
            0% {
                background-position: 0% 0%;
                background-color: #ff9a9e;
            }
            50% {
                background-position: 100% 100%;
                background-color: #a18cd1;
            }
            100% {
                background-position: 0% 0%;
                background-color: #ff9a9e;
            }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%);
            background-size: 400% 400%;
            animation: backgroundAnimation 20s ease infinite;
        
            color: #333;
            text-align: center;
            padding: 50px;
            min-height: 100vh; /* Ensures the background covers the full viewport height */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque white */
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
            display: inline-block;
            text-align: left; /* Align text to the left within the container */
        }

        h2 {
            font-size: 2.2em;
            margin-bottom: 20px;
            color: #00796b; /* Teal color for the heading */
        }

        label {
            font-size: 1.1em;
            margin-bottom: 10px;
            display: block;
            color: #555;
        }

        input[type="text"], input[type="date"], textarea, select {
            width: calc(100% - 22px); /* Adjust width to fit inside the container */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            background-color: #f9f9f9;
        }

        input[type="submit"] {
            background-color: #007bff; /* Blue for the submit button */
            color: white;
            border: none;
            padding: 15px 30px;
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
    <div class="form-container">
        <h2>Register Customer</h2>
        <form action="RegisterCustomerServlet" method="post">
            <label for="full_name">Full Name:</label>
            <input type="text" id="full_name" name="full_name"><br>
            <label for="address">Address:</label>
            <textarea id="address" name="address"></textarea><br>
            <label for="mobile_no">Mobile No:</label>
            <input type="text" id="mobile_no" name="mobile_no"><br>
            <label for="email_id">Email ID:</label>
            <input type="text" id="email_id" name="email_id"><br>
            <label for="account_type">Account Type:</label>
            <select id="account_type" name="account_type">
                <option value="Saving">Saving</option>
                <option value="Current">Current</option>
            </select><br>
            <label for="initial_balance">Initial Balance:</label>
            <input type="text" id="initial_balance" name="initial_balance"><br>
            <label for="date_of_birth">Date of Birth:</label>
            <input type="date" id="date_of_birth" name="date_of_birth"><br>
            <label for="id_proof">ID Proof:</label>
            <input type="text" id="id_proof" name="id_proof"><br>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
