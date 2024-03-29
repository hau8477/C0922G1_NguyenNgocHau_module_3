<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/9/2023
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Furama Resort Danang</title>
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
    <div style="background-image:
        url(https://furamavietnam.com/wp-content/uploads/2019/07/Vietnam_Danang_Furama_Resort_Exterior_Ocean-Pool-6.jpg);
        height: 100%;background-size: 100%;background-repeat: no-repeat">
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
</html>