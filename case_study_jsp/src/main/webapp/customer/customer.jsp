<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Furama Resort</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
    <%--    <style>--%>
    <%--        .glow {--%>
    <%--            font-size: 30px;--%>
    <%--            color: black;--%>
    <%--            -webkit-animation: glow 1s ease-in-out infinite alternate;--%>
    <%--            -moz-animation: glow 1s ease-in-out infinite alternate;--%>
    <%--            animation: glow 1s ease-in-out infinite alternate;--%>
    <%--        }--%>

    <%--        @-webkit-keyframes glow {--%>
    <%--            from {--%>
    <%--                text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;--%>
    <%--            }--%>
    <%--            to {--%>
    <%--                text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;--%>
    <%--            }--%>
    <%--        }--%>
    <%--    </style>--%>
</head>
<body>
<div class="container-fluid p-0" style="font-family: 'Times New Roman'">
    <div class="row ">
        <div class="col-lg-10">
            <div class="py-3 px-3">
                <div class="media d-flex align-items-center"><img
                        src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/lotus.png" alt="..."
                        width="100" class="mr-3 rounded-circle img-thumbnail shadow-sm">
                    <div class="media-body">
                        <h4 class="m-0 glow">Furama Resort</h4>
                        <p class="font-weight-light text-muted mb-0">Resort</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <h3 style="margin-top: 30px" class="">Nguyen Ngoc Le Phuc</h3>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="col-lg-9">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active ms-3" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/employee">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/customer">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contract</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3">
                <form action="/customer" method="get" class="d-flex mt-3">
                    <input name="action" value="search" hidden>
                    <input class="form-control me-2" type="search" name="searchName" placeholder="Search"
                           aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-1 border p-1" style="min-height: 500px">
            <a href="/customer?action=create" class="btn btn-success mt-3">Add New</a>
        </div>
        <div class="col-lg-11 border p-3" style="min-height: 500px">
            <table id="customer" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Id customer</th>
                    <th scope="col">Customer name</th>
                    <th scope="col">Customer type</th>
                    <th scope="col">Customer birthday</th>
                    <th scope="col">Customer id card</th>
                    <th scope="col">Customer phone</th>
                    <th scope="col">Customer email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Delete</th>
                    <th scope="col">Edit</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customerList}">
                    <tr>
                        <td> ${customer.customerCode}</td>
                        <td> ${customer.firstName} ${customer.lastName}</td>
                        <td> ${customer.customerType}</td>
                        <td> ${customer.dateOfBirth}</td>
                        <td> ${customer.identityCardNumber}</td>
                        <td> ${customer.telephoneNumber}</td>
                        <td> ${customer.email}</td>
                        <td> ${customer.address}</td>
                        <td>
                            <button type="button" class="btn btn-danger" href="/customer?action=delete"
                                    onclick="setValueForm('${customer.customerCode}')"
                                    data-toggle="modal" data-target="#modalDelete">
                                delete
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger">
                                <a class="text-decoration-none text-white"
                                   href="/customer?action=edit&idCustomer=${customer.customerCode}">Edit</a>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="modal fade" id="modalDelete" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form method="post" action="/customer?action=delete">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Delete Confirmation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <input name="idCustomer" id="idCustomer" hidden>

                                Are you sure you want to delete?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                                <button type="submit" class="btn btn-danger">Yes</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row border">
        <div class="col-lg-12 ">
            <h5 class="text-center">Furama resort management website </h5>
        </div>
    </div>
</div>
<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
<script>
    $(document).ready(function () {
        $('#customer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        })
    })
</script>
<script>
    function setValueForm(idCustomer) {
        document.getElementById("idCustomer").value = idCustomer;
    }
</script>
</body>
</html>
