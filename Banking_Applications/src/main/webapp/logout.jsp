<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session Invalidated</title>
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
            background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%);/* Light gradient */
            color: #333;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 80vh;
            margin: 0;
            animation: fadeIn 1s ease-in-out;
        }

        h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #00796b;
            animation: slideIn 1s ease-in-out;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 20px;
            animation: slideIn 1.5s ease-in-out;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-size: 1.1em;
            background-color: #e0f7fa;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            animation: slideIn 2s ease-in-out;
        }

        a:hover {
            background-color: #b2ebf2;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h2>Session Invalidated</h2>
    <p>Your session has been successfully invalidated.</p>
    <p><a href="login.jsp">Click here to login again</a></p>
</body>
</html>
