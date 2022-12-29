<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<div>
    <h1>Login</h1>
</div>
<div>
    <form action="login" method="post">
        <label>
            <input type="text" name="username" size="30%" placeholder="username">
        </label><br><br>
        <label>
            <input type="text" name="password" size="30%" placeholder="password">
        </label><br><br>
        <button type="submit">Sign in</button>
    </form>
</div>
</body>
</html>