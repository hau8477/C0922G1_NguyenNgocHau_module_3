<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Currency Converter</h2>
<form action="convert" method="post">
    <label>
        <input type="number" size="30%" name="rate">
    </label>
    <label>
        <input type="number" size="30%" name="usd">
    </label>
    <button type="submit">Converter</button>
</form>
</body>
</html>