<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Furama Resort</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container-fluid p-0" style="font-family: 'Times New Roman'">
    <div class="row ">
        <div class="col-lg-10">
            <div class="py-3 px-3">
                <div class="media d-flex align-items-center"><img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/lotus.png" alt="..." width="100" class="mr-3 rounded-circle img-thumbnail shadow-sm">
                    <div class="media-body">
                        <h4 class="m-0">Furama Resort</h4>
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
    <div class="container-fluid" style=" position: -webkit-sticky; position: sticky; top: 0;">
        <div class=" collapse navbar-collapse" id="navbarSupportedContent">
            <div class="col-lg-9">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active ms-3" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <i class="fas fa-home"></i>
                        <a class="nav-link " href="/employee">Employee</a>
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
                <%--                <form class="d-flex mt-3">--%>
                <%--                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--%>
                <%--                    <button class="btn btn-outline-success" type="submit">Search</button>--%>
                <%--                </form>--%>
            </div>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-1 border p-1" style="min-height: 500px">
            <a href="/customer" class="btn btn-success mt-3">Back</a>
        </div>
        <div class="col-lg-11 border p-5" style="min-height: 500px">
            <div class="row px-5">
                <form class="row g-3 needs-validation px-5" action="/customer?action=create" method="post">
                    <div class="col-md-12 py-2">
                        <label for="validationCustom01" class="form-label">Id Customer</label>
                        <input type="text" class="form-control" name="id" id="validationCustom01"
                               placeholder="id customer" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-6 py-2">
                        <label for="validationCustom02" class="form-label">First Name</label>
                        <input type="text" class="form-control" name="first name" id="validationCustom02"
                               placeholder="first name" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-6 py-2">
                        <label for="validationCustom03" class="form-label">Last Name</label>
                        <input type="text" class="form-control" name="last name" id="validationCustom03"
                               placeholder="last name" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom06" class="form-label">Customer birthday</label>
                        <input type="text" class="form-control" name="birthday" id="validationCustom06"
                               placeholder="Customer birthday" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom07" class="form-label">Customer id card</label>
                        <input type="text" class="form-control" name="id card" id="validationCustom07"
                               placeholder="Customer id card" required>
                        <div class="invalid-feedback">
                            Please provide a valid city.
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom05" class="form-label">Customer phone</label>
                        <input type="text" class="form-control" name="phone" id="validationCustom05"
                               placeholder="Customer phone" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom011" class="form-label">Customer email</label>
                        <input type="text" class="form-control" name="email" id="validationCustom011"
                               placeholder="Customer email" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom012" class="form-label">address</label>
                        <input type="text" class="form-control" name="address" id="validationCustom012"
                               placeholder="Address" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom08" class="form-label">Customer type</label><br>
                        <select class="form-select p-1" name="customer type" id="validationCustom08" required>
                            <option value="1">Diamond</option>
                            <option value="2">Platinum</option>
                            <option value="3">Gold</option>
                            <option value="4">Silver</option>
                            <option value="5">Member</option>
                        </select>
                        <div class="invalid-feedback">
                            Please select a valid state.
                        </div>
                    </div>
                    <div class="col-12 py-2">
                        <button class="btn btn-primary" type="submit">create</button>
                    </div>
                </form>
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
</body>
</html>