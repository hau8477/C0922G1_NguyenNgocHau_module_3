<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/9/2023
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List customer</title>
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
                List Customer

                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Add new customer
                </button>
                <div>
                    <span style="color: darkcyan;font-size: 50%">${mess}</span>
                </div>
            </h1>
            <table id="tableCustomer" class="table table-striped">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>ID</th>
                    <th>Customer type ID</th>
                    <th>Name</th>
                    <th>Day of birth</th>
                    <th>Gender</th>
                    <th>ID card</th>
                    <th>Phone number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items='${requestScope["customers"]}' var="customer" varStatus="stt">
                    <tr>
                        <td>${stt.count}</td>
                        <td>${customer.getId()}</td>
                        <td>${customer.getCustomerType()}</td>
                        <td>${customer.getName()}</td>
                        <td>${customer.getDayOfBirth()}</td>
                        <td>
                            <c:if test="${customer.isGender() == false}">
                                <span>Nữ</span>
                            </c:if>
                            <c:if test="${customer.isGender() == true}">
                                <span>Nam</span>
                            </c:if>
                        </td>
                        <td>${customer.getIdCard()}</td>
                        <td>${customer.getPhoneNumber()}</td>
                        <td>${customer.getEmail()}</td>
                        <td>${customer.getAddress()}</td>
                        <td>
                            <button onclick="infoCustomer('${customer.getId()}', '${customer.getName()}',
                                    '${customer.getDayOfBirth()}', '${customer.isGender()}', '${customer.getIdCard()}',
                                    '${customer.getPhoneNumber()}', '${customer.getEmail()}', '${customer.getAddress()}',
                                    '${employee.getCustomerType()}'
                                    )" type="button" class="btn btn-warning" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal1">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button onclick="infoDelete('${customer.getId()}', '${customer.getName()}')"
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
                <h1 class="modal-title fs-5" id="exampleModalLabel1">Create customer</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="customer?action=create" method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Full name</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                               placeholder="VD: Nguyễn Văn An" name="name" required
                               pattern="^[A-Z][a-z]*(\s[A-Z][a-z]*)*$" title="Tên phải viết hoa chữ cái đầu">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Day of birth</label>
                        <input type="date" class="form-control" id="exampleInputPassword1" placeholder="1970-11-07"
                               name="dayOfBirth">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Gender</label><br>
                        <input type="radio" name="gender" checked value="Nam">Nam
                        <input type="radio" name="gender" value="Nữ">Nữ
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail2" class="form-label">ID card</label>
                        <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp"
                               placeholder="VD: 13549681324" name="idCard">
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
                        <label for="exampleInputEmail6" class="form-label">Customer type</label>
                        <select class="nav-item dropdown" name="customerTypeId">
                            <c:forEach items="${customerTypes}" var="customerType">
                                <option value="${customerType.getId()}">${customerType.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save customer</button>
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
                <h1 class="modal-title fs-5" id="exampleModalLabel">Edit customer</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="customer?action=update" method="post">
                    <input type="number" hidden id="id1" name="id1">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Full name</label>
                        <input type="text" class="form-control" id="name1" aria-describedby="emailHelp"
                               placeholder="VD: Nguyễn Văn An" name="name1" required
                               pattern="^[A-Z][a-z]*(\s[A-Z][a-z]*)*$" title="Tên phải viết hoa chữ cái đầu">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Day of birth</label>
                        <input type="date" class="form-control" id="dayOfBirth1" placeholder="1970-11-07"
                               name="dayOfBirth1">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Gender</label><br>
                        <input type="radio" name="gender1" checked value="Nam">Nam
                        <input type="radio" name="gender1" value="Nữ">Nữ
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail2" class="form-label">ID card</label>
                        <input type="text" class="form-control" id="idCard1" aria-describedby="emailHelp"
                               placeholder="VD: 13549681324" name="idCard1">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail4" class="form-label">Phone number</label>
                        <input type="number" class="form-control" id="phoneNumber1" aria-describedby="emailHelp"
                               placeholder="VD: 4562317861" name="phoneNumber1">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail5" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="email1" aria-describedby="emailHelp"
                               placeholder="VD: annguyen@gamil.com" name="email1"
                               pattern="^\p{Lu}\p{Ll}+(\s\p{Lu}\p{Ll}+)*|(?=.{1,64}@)[A-Za-z0-9_-]+(\.[A-Za-z0-9_-]+)*@[^-][A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*(\.[A-Za-z]{2,})$"
                               title="Email chưa đúng định dạng" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address1" aria-describedby="emailHelp"
                               placeholder="VD: 22 Yên Bái, Đà Nẵng" name="address1">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail6" class="form-label">Customer type</label>
                        <select class="nav-item dropdown" name="customerTypeId1">
                            <c:forEach items="${customerTypes}" var="customerType">
                                <option value="${customerType.getId()}">${customerType.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Update customer</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal delete-->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel3">Delete customer</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="customer?action=delete" method="post">
                    <input hidden id="idDelete" name="idDelete">
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
        $('#tableCustomer').dataTable({
                "dom": 'lrtip',
                "lengthChange": false,
                "pageLength": 6
            }
        )
    })
</script>
<script>
    function infoCustomer(id, name, dayOfBirth,gender, idCard, phoneNumber, email, address, customerType) {
        document.getElementById("id1").value = id;
        document.getElementById("name1").value = name;
        document.getElementById("dayOfBirth1").value = dayOfBirth;
        document.getElementById("idCard1").value = idCard;
        document.getElementById("phoneNumber1").value = phoneNumber;
        document.getElementById("email1").value = email;
        document.getElementById("address1").value = address;
    }

    function infoDelete(id,name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>
</html>
