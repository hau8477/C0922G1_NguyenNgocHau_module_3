<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/9/2023
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List employee</title>
    <style>
        #logo {
            width: 15%;
            height: 100%;
        }

        .height-30 {
            height: 30%
        }

        .height-50 {
            height: 50%
        }

        .height-20 {
            height: 20%
        }

        .height-10 {
            height: 10%
        }


        .height-100 {
            height: 100%
        }

        body {
            font-family: Arial, sans-serif;
        }

        #menu, #menu ul, #menu li {
            padding: 0;
            margin: 0;
        }

        #menu li {
            list-style: none;
            position: relative;
            width: 150px;
            height: 30px;
            padding: 0 20px;
            background-color: white;
            line-height: 30px;
            cursor: pointer;
        }

        #menu li a {
            text-decoration: none;
            color: black;
        }

        #menu li:hover {
            background-color: #f8f9fa;
        }

        #menu ul ul {
            position: absolute;
            top: 0;
            left: 140px;
            visibility: hidden;
        }

        #menu ul li:hover ul {
            visibility: visible;
        }
    </style>
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
<div class="container-fluid">
    <!--  Header-->
    <div class="row bg-secondary">
        <div class="row justify-content-between col-md-12">
            <div class="col-md-3">
                <img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" alt="logo"
                     id="logo">
            </div>
            <div class="col-md-3 d-flex align-items-center">
                <h3>Nguyễn Ngọc Hậu</h3>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <!-- Container wrapper -->
            <div class="container-fluid">
                <!-- Toggle button -->
                <button
                        class="navbar-toggler"
                        type="button"
                        data-mdb-toggle="collapse"
                        data-mdb-target="#navbarCenteredExample"
                        aria-controls="navbarCenteredExample"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Collapsible wrapper -->
                <div
                        class="collapse navbar-collapse justify-content-center"
                        id="navbarCenteredExample"
                >
                    <!-- Left links -->
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="furama">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="navbarDropdown1" role="button"
                               aria-expanded="false" href="furama?action=employee">
                                Employee
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="navbarDropdown2" role="button"
                               aria-expanded="false" href="furama?action=customer">
                                Customer
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="navbarDropdown3" role="button"
                               aria-expanded="false" href="furama?action=service">
                                Service
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page">Contract</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    </ul>
                    <!-- Left links -->
                </div>
                <!-- Collapsible wrapper -->
            </div>
            <!-- Container wrapper -->
        </nav>
    </div>

    <!--  Container-->
    <div>
        <center>
            <h1>
                List Employee

                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Add new employee
                </button>
                <div>
                    <span style="color: darkcyan;font-size: 50%">${mess}</span>
                </div>
            </h1>
            <table id="tableEmployee" class="table table-striped">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Day of birth</th>
                    <th>ID card</th>
                    <th>Salary</th>
                    <th>Phone number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Position</th>
                    <th>Education degree</th>
                    <th>Division</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items='${requestScope["employees"]}' var="employee" varStatus="stt">
                    <tr>
                        <td>${stt.count}</td>
                        <td>${employee.getId()}</td>
                        <td>${employee.getName()}</td>
                        <td>${employee.getDayOfBirth()}</td>
                        <td>${employee.getIdCard()}</td>
                        <td>${employee.getSalary()}</td>
                        <td>${employee.getPhoneNumber()}</td>
                        <td>${employee.getEmail()}</td>
                        <td>${employee.getAddress()}</td>
                        <td>${employee.getPosition()}</td>
                        <td>${employee.getEducationDegree()}</td>
                        <td>${employee.getDivision()}</td>
                        <td>
                            <button onclick="infoEmployee('${employee.getId()}', '${employee.getName()}',
                                    '${employee.getDayOfBirth()}', '${employee.getIdCard()}', '${employee.getSalary()}',
                                    '${employee.getPhoneNumber()}', '${employee.getEmail()}', '${employee.getAddress()}',
                                    '${employee.getPosition()}', '${employee.getEducationDegree()}',
                                    '${employee.getDivision()}'
                                    )" type="button" class="btn btn-warning" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal1">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button onclick="infoDelete('${employee.getId()}', '${employee.getName()}')"
                                    type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal3">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </center>
    </div>

    <!--  Footer-->
    <div class="row footer">
        <div class="col-md-12 bg-secondary">
            <footer class=" text-white">
                <!-- Grid container -->
                <div class="container p-4">
                    <!--Grid row-->
                    <div class="row">
                        <!--Grid column-->
                        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                            <h5>Furama Resort Danang</h5>

                            <p>
                                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste atque ea quis
                                molestias. Fugiat pariatur maxime quis culpa corporis vitae repudiandae
                                aliquam voluptatem veniam, est atque cumque eum delectus sint!
                            </p>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Links</h5>

                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">Link 1</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 2</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 3</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 4</a>
                                </li>
                            </ul>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase mb-0">Links</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <a href="#!" class="text-white">Link 1</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 2</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 3</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 4</a>
                                </li>
                            </ul>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2022 Design by:
                    <a class="text-white" href="https://www.facebook.com/itsmee2711" target="_blank">Nguyễn Ngọc Hậu</a>
                </div>
                <!-- Copyright -->
            </footer>
        </div>
    </div>
</div>

<%--Modal create--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel1">Create employee</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="employee?action=create" method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Full name</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                               placeholder="VD: Nguyễn Văn An" name="name"
                               required
                               pattern="^[A-Z][a-z]*(\s[A-Z][a-z]*)*$" title="Tên phải viết hoa chữ cái đầu">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Day of birth</label>
                        <input type="date" class="form-control" id="exampleInputPassword1" placeholder="1970-11-07"
                               name="dayOfBirth">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail2" class="form-label">ID card</label>
                        <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp"
                               placeholder="VD: 13549681324" name="idCard">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail3" class="form-label">Salary</label>
                        <input type="number" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp"
                               placeholder="400000000" name="salary">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail4" class="form-label">Phone number</label>
                        <input type="number" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp"
                               placeholder="VD: 4562317861" name="phoneNumber">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail5" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp"
                               placeholder="VD: annguyen@gamil.com" name="email"
                               pattern="^\p{Lu}\p{Ll}+(\s\p{Lu}\p{Ll}+)*|(?=.{1,64}@)[A-Za-z0-9_-]+(\.[A-Za-z0-9_-]+)*@[^-][A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*(\.[A-Za-z]{2,})$"
                               title="Email chưa đúng định dạng" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Address</label>
                        <input type="text" class="form-control" id="exampleInputEmail6" aria-describedby="emailHelp"
                               placeholder="VD: 22 Yên Bái, Đà Nẵng" name="address">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Position</label>
                        <select class="nav-item dropdown" name="positionId">
                            <c:forEach items="${positions}" var="position">
                                <option value="${position.getId()}">${position.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Education degree</label>
                        <select class="nav-item dropdown" name="educationDegreeId">
                            <c:forEach items="${educationDegrees}" var="educationDegree">
                                <option value="${educationDegree.getId()}">${educationDegree.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Division</label>
                        <select class="nav-item dropdown" name="divisionId">
                            <c:forEach items="${divisions}" var="division">
                                <option value="${division.getId()}">${division.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save employee</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%--Modal edit--%>
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Edit employee</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="employee?action=update" method="post">
                    <input type="int" hidden id="id1" name="id1">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Full name</label>
                        <input type="text" class="form-control" id="name" aria-describedby="emailHelp"
                               placeholder="VD: Nguyễn Văn An" name="name" value="${employee.getName()}"
                               required
                               pattern="^[A-Z][a-z]*(\s[A-Z][a-z]*)*$" title="Tên phải viết hoa chữ cái đầu">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Day of birth</label>
                        <input type="date" class="form-control" id="dayOfBirth" placeholder="1970-11-07"
                               name="dayOfBirth" value="${employee.getDayOfBirth()}">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail2" class="form-label">ID card</label>
                        <input type="text" class="form-control" id="idCard" aria-describedby="emailHelp"
                               placeholder="VD: 13549681324" name="idCard" value="${employee.getIdCard()}">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail3" class="form-label">Salary</label>
                        <input type="number" class="form-control" id="salary" aria-describedby="emailHelp"
                               placeholder="400000000" name="salary" value="${employee.getSalary()}">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail4" class="form-label">Phone number</label>
                        <input type="number" class="form-control" id="phoneNumber" aria-describedby="emailHelp"
                               placeholder="VD: 4562317861" name="phoneNumber" value="${employee.getPhoneNumber()}">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail5" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="email" aria-describedby="emailHelp"
                               placeholder="VD: annguyen@gamil.com" name="email" value="${employee.getEmail()}"
                               pattern="^\p{Lu}\p{Ll}+(\s\p{Lu}\p{Ll}+)*|(?=.{1,64}@)[A-Za-z0-9_-]+(\.[A-Za-z0-9_-]+)*@[^-][A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*(\.[A-Za-z]{2,})$"
                               title="Email chưa đúng định dạng" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" aria-describedby="emailHelp"
                               placeholder="VD: 22 Yên Bái, Đà Nẵng" name="address" value="${employee.getAddress()}">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Position</label>
                        <select class="nav-item dropdown" name="positionId">
                            <c:forEach items="${positions}" var="position">
                                <option class="nav-link dropdown-toggle"
                                        value="${position.getId()}">${position.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Education degree</label>
                        <select class="nav-item dropdown" name="educationDegreeId">
                            <c:forEach items="${educationDegrees}" var="educationDegree">
                                <option class="nav-link dropdown-toggle"
                                        value="${educationDegree.getId()}">${educationDegree.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Division</label>
                        <select class="nav-item dropdown" name="divisionId">
                            <c:forEach items="${divisions}" var="division">
                                <option class="nav-link dropdown-toggle"
                                        value="${division.getId()}">${division.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Update employee</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal delete -->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel3">Delete employee</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="employee?action=delete" method="post">
                    <input type="number" id="idDelete" name="idDelete">
                    <span>
                        Bạn có chắc chắn muốn xóa <span style="color: red" id="nameDelete"></span>
                    </span>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Delete</button>
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
        $('#tableEmployee').dataTable({
                "dom": 'lrtip',
                "lengthChange": false,
                "pageLength": 6
            }
        )
    })
</script>
<script>

    function infoEmployee(id, name, dayOfBirth, idCard, salary, phoneNumber, email, address, position, educationDegree,
                          division) {
        document.getElementById("id1").value = id;
        document.getElementById("name").value = name;
        document.getElementById("dayOfBirth").value = dayOfBirth;
        document.getElementById("idCard").value = idCard;
        document.getElementById("salary").value = salary;
        document.getElementById("phoneNumber").value = phoneNumber;
        document.getElementById("email").value = email;
        document.getElementById("address").value = address;
        document.getElementById("position").value = position;
        document.getElementById("educationDegree").value = educationDegree;
        document.getElementById("division").value = division;
    }

    function infoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }

</script>
</html>

