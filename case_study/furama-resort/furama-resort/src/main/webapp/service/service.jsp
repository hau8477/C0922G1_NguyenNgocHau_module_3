<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 1/10/2023
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List service</title>
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
                List Service
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Add new service
                </button>
                <div>
                    <span style="color: darkcyan;font-size: 50%">${mess}</span>
                </div>
            </h1>
            <table id="tableService" class="table table-striped">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Area</th>
                    <th>Cost</th>
                    <th>Max people</th>
                    <th>Rent type</th>
                    <th>Facility type</th>
                    <th>Standard room</th>
                    <th>Description other convenience</th>
                    <th>Pool area</th>
                    <th>Number of floors</th>
                    <th>Facility free</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items='${requestScope["facilities"]}' var="ficility" varStatus="stt">
                    <tr>
                        <td>${stt.count}</td>
                        <td>${ficility.getId()}</td>
                        <td>${ficility.getName()}</td>
                        <td>${ficility.getArea()}</td>
                        <td>${ficility.getCost()}</td>
                        <td>${ficility.getMaxPeople()}</td>
                        <td>${ficility.getRentType()}</td>
                        <td>${ficility.getFacilityType()}</td>
                        <td>${ficility.getStandardRoom()}</td>
                        <td>${ficility.getDescriptionOtherConvenience()}</td>
                        <td>${ficility.getPoolArea()}</td>
                        <td>${ficility.getNumberOfFloors()}</td>
                        <td>${ficility.getFacilityFree()}</td>
                        <td>
                            <button onclick="infoFacility('${ficility.getId()}','${ficility.getName()}',
                                    '${ficility.getArea()}','${ficility.getCost()}','${ficility.getMaxPeople()}',
                                    '${ficility.getRentType()}','${ficility.getFacilityType()}',
                                    '${ficility.getStandardRoom()}','${ficility.getDescriptionOtherConvenience()}',
                                    '${ficility.getPoolArea()}','${ficility.getNumberOfFloors()}',
                                    '${ficility.getFacilityFree()}')" type="button" class="btn btn-warning"
                                    data-bs-toggle="modal"
                                    data-bs-target="#exampleModal1">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button onclick="infoDelete('${ficility.getId()}','${ficility.getName()}')"
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
                <h1 class="modal-title fs-5" id="exampleModalLabel1">Create service</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="service?action=create" method="post">
                    <div class="mb-3">
                        <label for="facilityTypeId" class="form-label">Facility type</label>
                        <div class="mb-3">
                            <label for="facilityTypeId" class="form-label"></label>
                            <select onchange="hiddenInput()" class="nav-item dropdown" name="facilityTypeId"
                                    id="facilityTypeId">
                                <option></option>
                                <c:forEach items="${facilityTypes}" var="facilityType">
                                    <option value="${facilityType.getId()}">${facilityType.getName()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="nameService" class="form-label">Name</label>
                        <input type="text" class="form-control" id="nameService" aria-describedby="emailHelp"
                               name="nameService">
                    </div>
                    <div class="mb-3">
                        <label for="area" class="form-label">Area</label>
                        <input type="number" class="form-control" id="area"
                               name="area">
                    </div>
                    <div class="mb-3">
                        <label for="cost" class="form-label">Cost</label>
                        <input type="number" class="form-control" id="cost" aria-describedby="emailHelp"
                               name="cost">
                    </div>
                    <div class="mb-3">
                        <label for="maxPeople" class="form-label">Max people</label>
                        <input type="number" class="form-control" id="maxPeople" aria-describedby="emailHelp"
                               name="maxPeople">
                    </div>
                    <div class="mb-3">
                        <label for="rentType" class="form-label">Rent type</label>
                        <div class="mb-3">
                            <label for="rentType" class="form-label"></label>
                            <select class="nav-item dropdown" name="rentType" id="rentType">
                                <c:forEach items="${rentTypes}" var="rentType">
                                    <option value="${rentType.getId()}">${rentType.getName()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="standardRoom" class="form-label">Standard room</label>
                        <input type="text" class="form-control" id="standardRoom" aria-describedby="emailHelp"
                               name="standardRoom">
                    </div>
                    <div class="mb-3">
                        <label for="descriptionOtherConvenience" class="form-label">Description other
                            convenience</label>
                        <input type="text" class="form-control" id="descriptionOtherConvenience"
                               aria-describedby="emailHelp"
                               name="descriptionOtherConvenience">
                    </div>
                    <div class="mb-3">
                        <label for="poolArea" class="form-label">Pool area</label>
                        <input type="number" class="form-control" id="poolArea" aria-describedby="emailHelp"
                               name="poolArea">
                    </div>
                    <div class="mb-3">
                        <label for="numberOfFloors" class="form-label">Number of floors</label>
                        <input type="number" class="form-control" id="numberOfFloors" aria-describedby="emailHelp"
                               name="numberOfFloors">
                    </div>
                    <div class="mb-3">
                        <label for="facilityFree" class="form-label">Facility free</label>
                        <input type="text" class="form-control" id="facilityFree" aria-describedby="emailHelp"
                               name="facilityFree">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
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
                <h1 class="modal-title fs-5" id="exampleModalLabel2">Create service</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="service?action=edit" method="post">
                    <input type="number" id="idServiceEdit" hidden name="idServiceEdit">
                    <div class="mb-3">
                        <label for="facilityTypeId" class="form-label">Facility type</label>
                        <div class="mb-3">
                            <label for="facilityTypeId" class="form-label"></label>
                            <select onchange="hiddenInput()" class="nav-item dropdown" name="facilityTypeIdEdit"
                                    id="facilityTypeIdEdit">
                                <option></option>
                                <c:forEach items="${facilityTypes}" var="facilityType">
                                    <option value="${facilityType.getId()}">${facilityType.getName()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="nameService" class="form-label">Name</label>
                        <input type="text" class="form-control" id="nameServiceEdit" aria-describedby="emailHelp"
                               name="nameServiceEdit">
                    </div>
                    <div class="mb-3">
                        <label for="area" class="form-label">Area</label>
                        <input type="number" class="form-control" id="areaEdit"
                               name="areaEdit">
                    </div>
                    <div class="mb-3">
                        <label for="cost" class="form-label">Cost</label>
                        <input type="number" class="form-control" id="costEdit" aria-describedby="emailHelp"
                               name="costEdit">
                    </div>
                    <div class="mb-3">
                        <label for="maxPeople" class="form-label">Max people</label>
                        <input type="number" class="form-control" id="maxPeopleEdit" aria-describedby="emailHelp"
                               name="maxPeopleEdit">
                    </div>
                    <div class="mb-3">
                        <label for="rentType" class="form-label">Rent type</label>
                        <div class="mb-3">
                            <label for="rentType" class="form-label"></label>
                            <select class="nav-item dropdown" name="rentTypeEdit" id="rentTypeEdit">
                                <c:forEach items="${rentTypes}" var="rentType">
                                    <option value="${rentType.getId()}">${rentType.getName()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="standardRoom" class="form-label">Standard room</label>
                        <input type="text" class="form-control" id="standardRoomEdit" aria-describedby="emailHelp"
                               name="standardRoomEdit">
                    </div>
                    <div class="mb-3">
                        <label for="descriptionOtherConvenience" class="form-label">Description other
                            convenience</label>
                        <input type="text" class="form-control" id="descriptionOtherConvenienceEdit"
                               aria-describedby="emailHelp"
                               name="descriptionOtherConvenienceEdit">
                    </div>
                    <div class="mb-3">
                        <label for="poolArea" class="form-label">Pool area</label>
                        <input type="number" class="form-control" id="poolAreaEdit" aria-describedby="emailHelp"
                               name="poolAreaEdit">
                    </div>
                    <div class="mb-3">
                        <label for="numberOfFloors" class="form-label">Number of floors</label>
                        <input type="number" class="form-control" id="numberOfFloorsEdit" aria-describedby="emailHelp"
                               name="numberOfFloorsEdit">
                    </div>
                    <div class="mb-3">
                        <label for="facilityFree" class="form-label">Facility free</label>
                        <input type="text" class="form-control" id="facilityFreeEdit" aria-describedby="emailHelp"
                               name="facilityFreeEdit">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
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
                <h1 class="modal-title fs-5" id="exampleModalLabel3">Delete service</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="service?action=delete" method="post">
                    <input hidden type="number" id="idDelete" name="idDelete">
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
        $('#tableService').dataTable({
                "dom": 'lrtip',
                "lengthChange": false,
                "pageLength": 6
            }
        )
    })
</script>
<script>
    function hiddenInput() {
        let choice = +document.getElementById("facilityTypeId").value;

        switch (choice) {
            case 1:
                document.getElementById("nameService").value = "Villa";
                document.getElementById("facilityFree").disabled = true;
                break;
            case 2:
                document.getElementById("nameService").value = "House";
                document.getElementById("facilityFree").disabled = true;
                break;
            case 3:
                document.getElementById("nameService").value = "Room";
                document.getElementById("standardRoom").disabled = true;
                document.getElementById("poolArea").disabled = true;
                document.getElementById("numberOfFloors").disabled = true;
                document.getElementById("facilityFree").disabled = false;
                break;
        }
    }

    function infoFacility(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom,
                          descriptionOtherConvenience, poolArea, numberOfFloors, facilityFree) {
        document.getElementById("idServiceEdit").value = id;
        document.getElementById("nameServiceEdit").value = name;
        document.getElementById("areaEdit").value = area;
        document.getElementById("costEdit").value = cost;
        document.getElementById("maxPeopleEdit").value = maxPeople;
        document.getElementById("standardRoomEdit").value = standardRoom;
        document.getElementById("descriptionOtherConvenienceEdit").value = descriptionOtherConvenience;
        document.getElementById("poolAreaEdit").value = poolArea;
        document.getElementById("numberOfFloorsEdit").value = numberOfFloors;
        document.getElementById("facilityFreeEdit").value = facilityFree;
    }

    function infoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }

</script>
</html>