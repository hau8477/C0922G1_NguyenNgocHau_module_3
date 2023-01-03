<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/3/2023
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <style>
        h1{
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Product List</h1>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="btn btn-primary nav-link active" aria-current="page" href="product?action=create">Create new product</a>
                </li>
            </ul>
            <form action="product?action=find" class="d-flex" role="search" method="get">
                <input class="form-control me-2" type="search" placeholder="Search product" aria-label="Search" name="search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<table class="table table-striped">
    <tr>
        <td>STT</td>
        <td>ID</td>
        <td>Name</td>
        <td>Prices</td>
        <td>Describe</td>
        <td>Brand</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="product" items='${requestScope["products"]}' varStatus="stt">
        <tr>
            <td>${stt.count}</td>
            <td>${product.getID()}</td>
            <td><a href="/product?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrices()}</td>
            <td>${product.getDescribe()}</td>
            <td>${product.getBrand()}</td>
            <td><a href="/product?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
</html>
