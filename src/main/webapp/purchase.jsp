<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Purchase Grocery Item</title>
</head>
<body>
    <h1>Purchase Grocery Item</h1>
    <form action="purchaseResult" method="post">
        <label for="productId">Product ID:</label>
        <input type="text" id="productId" name="productId" required/><br/>
        <label for="quantity">Quantity:</label>
        <input type="text" id="quantity" name="quantity" required/><br/>
        <button type="submit">Purchase</button>
    </form>
</body>
</html>
