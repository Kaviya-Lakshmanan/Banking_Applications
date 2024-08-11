<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
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
            background:linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%); /* Light teal gradient */
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

        h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #00796b;
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
            font-size: 1.2em;
            margin-bottom: 8px;
            display: block;
            color: #00796b;
        }

        input[type="text"] {
            width: calc(100% - 22px); /* Full width minus padding */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 1em;
            box-sizing: border-box; /* Include padding in width calculation */
        }

        input[type="submit"] {
            background-color: #00796b; /* Teal color for button */
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            display: block;
            width: 100%; /* Full width button */
            box-sizing: border-box;
        }

        input[type="submit"]:hover {
            background-color: #004d40;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h2>Deposit Amount</h2>
    <form action="DepositServlet" method="post">
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount"><br><br>
        <input type="submit" value="Deposit">
    </form>
</body>
</html>
