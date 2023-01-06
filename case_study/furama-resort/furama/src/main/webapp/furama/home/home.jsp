<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/6/2023
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Furama Resort Danang</title>
    <link rel="stylesheet" href="../bootstrap-5.3.0-alpha1-dist/bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="styles_furama.css">
    <link rel="stylesheet" href="../MDB5-STANDARD-UI-KIT-Free-6.0.1/css/mdb.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
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
                            <a class="nav-link active" aria-current="page">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle"  id="navbarDropdown1" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Employee
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item">List employee</a></li>
                                <li><a class="dropdown-item">Add new employee</a></li>
                                <li><a class="dropdown-item">Edit employee</a></li>
                                <li><a class="dropdown-item">Delete employee</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown2" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Customer
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item">List customer</a></li>
                                <li><a class="dropdown-item">Add new customer</a></li>
                                <li><a class="dropdown-item">Edit customer</a></li>
                                <li><a class="dropdown-item">Delete customer</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Service
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <div id="menu">
                                    <ul>
                                        <li><a>Villa</a>
                                            <ul>
                                                <li><a>List villa</a></li>
                                                <li><a>Add new villa</a></li>
                                                <li><a>Edit villa</a></li>
                                                <li><a>Delete villa</a></li>
                                            </ul>
                                        </li>
                                        <li><a>House</a>
                                            <ul>
                                                <li><a>List house</a></li>
                                                <li><a>Add new house</a></li>
                                                <li><a>Edit house</a></li>
                                                <li><a>Delete house</a></li>
                                            </ul>
                                        </li>
                                        <li><a>Room</a>
                                            <ul>
                                                <li><a>List room</a></li>
                                                <li><a>Add new room</a></li>
                                                <li><a>Edit room</a></li>
                                                <li><a>Delete room</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </ul>
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
    <div style="background-image:
        url(https://c.s-microsoft.com/en-us/CMSImages/Surface_HP_Holiday_Hero_wave_5_red_1920x1080.jpg?version=1a595eab-fc15-693d-e500-76674b150916);
        height: 100%;background-size: 100%">
        <div class=" d-flex align-items-start col-md-4">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Active</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
        </div>
        <div class="col-md-8 height-100" >

        </div>

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
</body>
<script src="../bootstrap-5.3.0-alpha1-dist/bootstrap-5.3.0-alpha1-dist/js/bootstrap.js"></script>
<script src="../MDB5-STANDARD-UI-KIT-Free-6.0.1/js/mdb.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
</html>