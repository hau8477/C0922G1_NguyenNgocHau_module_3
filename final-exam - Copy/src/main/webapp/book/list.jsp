<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/11/2023
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách sách</title>
    <link rel="stylesheet" href="../MDB5-STANDARD-UI-KIT-Free-6.0.1/css/mdb.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <%--    Phân trang--%>
    <link rel="stylesheet" href="library/bootstrap520/css/bootstrap.min.css">
    <link rel="stylesheet" href="library/datatables/css/dataTables.bootstrap5.min.css">
</head>
<body>
<center>
    <button type="button" class="btn btn-info"><a style="text-decoration: none" href="home">
        Home</a></button>
    <h1>
        Danh sách sách

        <%--        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">--%>
        <%--            Add new customer--%>
        <%--        </button>--%>
        <div>
            <span style="color: darkcyan;font-size: 50%">${mess}</span>
        </div>
    </h1>
    <table id="tableStudent" class="table table-striped">
        <thead>
        <tr>
            <th>STT</th>
            <th>Mã sách</th>
            <th>Tên sách</th>
            <th>Tác giả</th>
            <th>Mô tả</th>
            <th>Số lượng</th>
            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="book" items="${books}" varStatus="stt">
            <td>${stt.count}</td>
            <td>${book.getId()}</td>
            <td>${book.getName()}</td>
            <td>${book.getHuman()}</td>
            <td>${book.getDescription()}</td>
            <td>${book.getQuantity()}</td>
            <td>
                <button onclick="idBook('${book.getId()}','${book.getName()}')" type="button" class="btn btn-warning" data-bs-toggle="modal"
                        data-bs-target="#exampleModal12">
                    Mượn sách
                </button>
            </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</center>

<%--Modal booking book--%>
<div class="modal fade" id="exampleModal12" tabindex="-1" aria-labelledby="exampleModalLabel12" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel12">Mượn sách</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="cardbook?action=booking" method="post">
                    <div class="mb-3">
                        <label  class="form-label">Mã mượn sách</label>
                        <input type="text" class="form-control" id="idBookOrder" aria-describedby="emailHelp"
                               placeholder="VD: Nguyễn Văn An" name="idBookOrder"
                               required readonly>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tên sách</label>
                        <input type="text" class="form-control" id="nameBook"
                               aria-describedby="emailHelp" name="nameBook" required readonly>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tên học sinh</label>
                        <select class="nav-item dropdown" name="idStudent" id>
                            <c:forEach items="${students}" var="student">
                                <option value="${student.getId()}">${student.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Ngày mượn sách</label>
                        <input type="date" class="form-control" id="dateStart" aria-describedby="emailHelp"
                               placeholder="VD: Nguyễn Văn An" name="dateStart" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Ngày trả sách</label>
                        <input type="date" class="form-control" id="dateEnd" aria-describedby="emailHelp"
                               placeholder="VD: 10" name="dateEnd" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                        <button type="submit" class="btn btn-primary">Mượn sách</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../bootstrap-5.3.0-alpha1-dist/bootstrap-5.3.0-alpha1-dist/js/bootstrap.js"></script>
<script src="../MDB5-STANDARD-UI-KIT-Free-6.0.1/js/mdb.min.js"></script>
<%--Phân trang--%>
<script src="library/jquery/jquery-3.5.1.min.js"></script>
<script src="library/datatables/js/jquery.dataTables.min.js"></script>
<script src="library/datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
                "dom": 'lrtip',
                "lengthChange": false,
                "pageLength": 6
            }
        )
    })
</script>
<script>
    function idBook(id, name) {
        document.getElementById("idBookOrder").value = id;
        document.getElementById("nameBook").value = name;
    }
</script>
</html>
