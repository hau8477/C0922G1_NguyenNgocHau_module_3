<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Vietnamese Dictionary</h2>
<form action="translate-servlet" method="get">
    <label>
        <input type="text" name="txtSearch" placeholder="Enter your word">
    </label>
    <button type="submit">Search</button>
</form>
</body>
</html>