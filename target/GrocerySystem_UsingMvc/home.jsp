<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">    
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
</head>

<body style="background-image: url('https://i.ibb.co/ycvKK091/file-0000000062f461f8a38f8c26bda22804.png'); 
             background-size: cover; 
             background-repeat: no-repeat; 
             background-position: center;">
 
    <h1 id="Head">Grocery Management System</h1>

    <div class="container">
        <a href="${pageContext.request.contextPath}/add">Add Grocery Item</a><br/>
        <a href="${pageContext.request.contextPath}/view">View All Grocery Items</a><br/>
        <a href="${pageContext.request.contextPath}/searchItems">Search Grocery Item</a><br/>
        <a href="${pageContext.request.contextPath}/purchase">Purchase Grocery Item</a><br/>
    </div>

</body>
</html>
