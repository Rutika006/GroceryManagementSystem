<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Grocery Items</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    
</head>
<body id="viewBody" style="background-image: url('https://i.ibb.co/RkCHgtzm/1749456464794.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center">

    <h1>View Grocery Items</h1>
    <table border="1">
        <tr>
            <th>Product ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Stock Quantity</th>
        </tr>
        <c:forEach var="item" items="${groceryList}">
            <tr>
                <td>${item.productid}</td>
                <td>${item.name}</td>
                <td>${item.category}</td>
                <td>${item.price}</td>
                <td>${item.stockQuantity}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
