<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Grocery Item</title>
</head>
<body>
    <h1>Search Grocery Item</h1>
    <form action="searchResult" method="post">
        <label for="searchInput">Name or Category:</label>
        <input type="text" id="searchInput" name="searchInput" required/><br/>
        <button type="submit">Search</button>
    </form>
</body>
</html>
