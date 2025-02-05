<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 2/5/2025
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ứng dụng Máy tính Cơ bản</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .calculator {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        input[type="number"], select, button {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .result, .error {
            margin-top: 15px;
            font-weight: bold;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
<div class="calculator">
    <h2>Máy tính cơ bản</h2>
    <form action="calculator" method="post">
        <input type="number" name="num1" placeholder="Nhập số thứ nhất">
        <input type="number" name="num2" placeholder="Nhập số thứ hai">

        <select name="operation">
            <option value="add">Cộng (+)</option>
            <option value="subtract">Trừ (-)</option>
            <option value="multiply">Nhân (×)</option>
            <option value="divide">Chia (÷)</option>
        </select>

        <button>Tính toán</button>

        <c:if test="${not empty result}">
            <h3>Kết quả: ${result}</h3>
        </c:if>

        <c:if test="${not empty error}">
            <h3 style="color: red;">Lỗi: ${error}</h3>
        </c:if>
    </form>

</div>
</body>
</html>
