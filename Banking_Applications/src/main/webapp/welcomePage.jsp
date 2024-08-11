<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<style>
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes moveIn {
        from { transform: translateY(30px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #2e3b4e 0%, #4b79a1 100%);
        background-size: cover;
        text-align: center;
        padding: 50px 20px;
        animation: fadeIn 2s ease-in-out;
        color: #ffffff;
        height: 80vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    h2 {
        font-size: 3em;
        margin-bottom: 20px;
        animation: moveIn 1s ease-in-out;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        padding: 30px;
        animation: moveIn 1.5s ease-in-out;
    }

    a {
        display: inline-block;
        text-decoration: none;
        color: #ffffff;
        background-color: #007bff;
        padding: 15px 30px;
        border-radius: 25px;
        margin: 15px 10px;
        transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        font-size: 1.2em;
    }

    a.admin {
        background-color: #28a745;
    }

    a.customer {
        background-color: #dc3545;
    }

    a:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    a.admin:hover {
        background-color: #218838;
    }

    a.customer:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
<h2>Welcome to BankingSystem</h2>
<div class="container">
    <a href="login.jsp" target="_blank" class="admin">Admin Page</a>
    <a href="customerLogin.jsp" target="_blank" class="customer">Customer Page</a>
</div>
</body>
</html>
