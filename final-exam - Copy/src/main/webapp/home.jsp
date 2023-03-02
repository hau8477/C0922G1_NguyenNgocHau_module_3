<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/12/2023
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>School</title>
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
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Trang chủ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="home?action=book">Danh sách sách</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="home?action=bookorder">Thống kê sách đang cho mượn</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
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
</html>
