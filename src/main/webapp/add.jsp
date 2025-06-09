<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Grocery Item</title>
</head>
<body>
    <h1>Add Grocery Item</h1>
    <form:form method="post" action="save" modelAttribute="groceryItem">
        <label for="name">Name:</label>
        <form:input path="name" id="name" required="true"/><br/>
        
        <label for="category">Category:</label>
        <form:input path="category" id="category" required="true"/><br/>
        
        <label for="price">Price:</label>
        <form:input path="price" id="price" required="true"/><br/>
        
        <label for="stockQuantity">Stock Quantity:</label>
        <form:input path="stockQuantity" id="stockQuantity" required="true"/><br/>
        
        <button type="submit">Add Item</button>
    </form:form>
</body>
</html>
