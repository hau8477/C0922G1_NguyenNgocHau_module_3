<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/3/2023
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <style>
        a {
            color: white;
        }
    </style>
</head>
<body>
<h1>View product</h1>
<button type="button" class="btn btn-primary"><a href="product">List product</a></button>
<form method="post">
    <div class="mb-3">
        <label for="id" class="form-label">ID</label>
        <input type="text" class="form-control" id="id" name="id" aria-describedby="emailHelp"
               value="${product.getId()}">
    </div>
    <div class="mb-3">
        <label for="nameProduct" class="form-label">Name product</label>
        <input type="text" class="form-control" id="nameProduct" name="nameProduct" aria-describedby="emailHelp"
               value="${product.getNameProduct()}">
    </div>
    <div class="mb-3">
        <label for="prices" class="form-label">Prices</label>
        <input type="text" class="form-control" id="prices" name="prices" aria-describedby="emailHelp"
               value="${product.getPrices()}">
    </div>
    <div class="mb-3">
        <label for="describe" class="form-label">Describe</label>
        <input type="text" class="form-control" id="describe" name="describe" value="${product.getDescribe()}">
    </div>
    <div class="mb-3">
        <label for="brand" class="form-label">Brand</label>
        <input type="text" class="form-control" id="brand" name="brand" value="${product.getBrand()}">
    </div>
</form>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
</html>
