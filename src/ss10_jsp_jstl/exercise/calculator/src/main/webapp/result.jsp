<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <style>
        .home {
            border: black solid 1px;
            width: 40%;
            height: 70%;
            margin-left: 30%;
        }
    </style>
</head>
<body>
<div class="home bg-warning">
    <div class="d-flex justify-content-center">
        <h1>Simple Calculator</h1>
    </div>
    <div class="d-flex justify-content-center">
        <form action="CalculatorServlet" method="post">
            <fieldset>
                <div class="mb-3">
                    <label class="form-label">First operand</label><br>
                    <label>
                        <input type="text" class="form-control" value="${first_operand}" aria-describedby="emailHelp">
                    </label>
                </div>
                <div class="mb-3">
                    <label class="form-label">Second operand</label><br>
                    <label>
                        <input type="text" class="form-control" value="${operator}" aria-describedby="emailHelp">
                    </label>
                </div>
                <div class="mb-3">
                    <label class="form-label">Second operand</label><br>
                    <label>
                        <input type="text" class="form-control" value="${second_operand}" aria-describedby="emailHelp">
                    </label>
                </div>
                <div class="mb-3">
                    <label class="form-label">Result</label><br>
                    <label>
                        <input type="text" class="form-control" value="${result}" aria-describedby="emailHelp">
                    </label>
                </div>
            </fieldset>
        </form>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
</html>