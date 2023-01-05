<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/4/2023
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit user</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <style>
        #mess {
            color: red;
        }

        a {
            color: white;
        }

        h1 {
            background-color: antiquewhite;
            text-align: center;
            color: cornflowerblue;
        }
    </style>
</head>
<body>
<h1>Edit user</h1>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span id="mess" class="message">${requestScope['message']}</span>
    </c:if>
</p>
<button type="button" class="btn btn-primary"><a href="user">List user</a></button>
<form action="user?action=edit" method="post">
    <div class="mb-3">
        <input hidden type="text" class="form-control" id="id" name="id" aria-describedby="emailHelp"
               value="${user.getId()}">
    </div>
    <div class="mb-3">
        <label for="name" class="form-label">Name user</label>
        <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp"
               value="${user.getName()}">
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email user</label>
        <input type="text" class="form-control" id="email" name="email" aria-describedby="emailHelp"
               value="${user.getEmail()}">
    </div>
    <div class="mb-3">
        <label for="country" class="form-label">Country</label>
        <input type="text" class="form-control" id="country" name="country" aria-describedby="emailHelp"
               value="${user.getCountry()}">
    </div>
    <button type="submit" class="btn btn-primary">Update user</button>
</form>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
</html>
