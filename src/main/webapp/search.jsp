<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Grocery Item</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body id="searchBody" style="
    margin: 0;
    padding: 0;
    min-height: 500px;
    background-image: url('https://i.ibb.co/RkCHgtzm/1749456464794.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    background-attachment: fixed;
">    <h1>Search Grocery Item</h1>
    <form action="searchResult" method="post">
        <label for="searchInput">Name or Category:</label>
        <input type="text" id="searchInput" name="searchInput" required/><br/>
        <button type="submit">Search</button>
    </form>
</body>
</html>
