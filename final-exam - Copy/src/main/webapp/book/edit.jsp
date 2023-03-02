<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/12/2023
  Time: 12:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit student</title>
    <link rel="stylesheet" href="../MDB5-STANDARD-UI-KIT-Free-6.0.1/css/mdb.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
</head>
<body>
<center>
    <button type="button" class="btn btn-info"><a style="text-decoration: none" href="student">
        Home</a></button>
    <h1>
        Edit student

        <%--        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">--%>
        <%--            Add new customer--%>
        <%--        </button>--%>

        <div>
            <span style="color: darkcyan;font-size: 50%"></span>
        </div>
    </h1>
    <form action="student?action=create" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail" class="form-label">Full name</label>
            <input type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"
                   placeholder="VD: Nguyễn Văn An" name="name" required
                   pattern="^[A-Z][a-z]*(\s[A-Z][a-z]*)*$" title="Tên phải viết hoa chữ cái đầu"
            value="">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="VD:an@gmail.com" name="email"
                   pattern="^\p{Lu}\p{Ll}+(\s\p{Lu}\p{Ll}+)*|(?=.{1,64}@)[A-Za-z0-9_-]+(\.[A-Za-z0-9_-]+)*@[^-][A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*(\.[A-Za-z]{2,})$"
                   title="Email chưa đúng định dạng" required value="">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail2" class="form-label">Phone number</label>
            <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp"
                   placeholder="VD: 123123" name="phoneNumber" required value="">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail3" class="form-label">Point</label>
            <input type="text" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp"
                   placeholder="VD: 10" name="point" required value="">
        </div>
        <div class="mb-3">
            <label class="form-label">Class</label>
            <select class="nav-item dropdown" name="classId" id>

            </select>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Update student</button>
        </div>
    </form>
</center>

</body>
<script src="../bootstrap-5.3.0-alpha1-dist/bootstrap-5.3.0-alpha1-dist/js/bootstrap.js"></script>
<script src="../MDB5-STANDARD-UI-KIT-Free-6.0.1/js/mdb.min.js"></script>
</html>