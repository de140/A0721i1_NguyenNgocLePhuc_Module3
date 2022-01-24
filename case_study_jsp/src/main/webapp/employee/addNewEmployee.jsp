<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Furama Resort</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">

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
            <h3 style="margin-top: 30px" class="">Le Manh Hung</h3>
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
            <a href="/employee" class="btn btn-success mt-3">Back</a>
        </div>
        <div class="col-lg-11 border p-4 px-5" style="min-height: 500px">
            <div class="row px-5">
                <form class="row g-3 needs-validation px-5" action="/employee?action=create" method="post">
                    <div class="col-md-12 py-2">
                        <label for="validationCustom01" class="form-label">Id Employee</label>
                        <input type="number" value="${employeeCreate.employeeCode}" class="form-control" name="id" id="validationCustom01"
                               placeholder="id employee" required minlength="5" maxlength="10">
                        <c:if test="${errEmployeeCode != null}">
                            <p style="color: red">${errEmployeeCode}</p>
                        </c:if>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-6 py-2">
                        <label for="validationCustom02" class="form-label">First Name</label>
                        <input type="text" class="form-control" name="firstName" id="validationCustom02"
                               value="${employeeCreate.firstName}" placeholder="first name" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-6 py-2">
                        <label for="validationCustom03" class="form-label">Last Name</label>
                        <input type="text" class="form-control" name="lastName" id="validationCustom03"
                               value="${employeeCreate.lastName}" placeholder="last name" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom06" class="form-label">Employee birthday</label>
                        <input type="text" class="form-control" name="birthday" id="validationCustom06"
                               value="${employeeCreate.dateOfBirth}" placeholder="Employee birthday" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom07" class="form-label">Employee id card</label>
                        <input type="text" class="form-control" name="id card" id="validationCustom07"
                               value="${employeeCreate.identityCardNumber}" placeholder="Employee id card" required>
                        <div class="invalid-feedback">
                            Please provide a valid city.
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom05" class="form-label">Employee phone</label>
                        <input type="text" class="form-control" name="phone" id="validationCustom05"
                               value="${employeeCreate.telephoneNumber}" placeholder="Employee phone" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom011" class="form-label">Employee email</label>
                        <input type="text" class="form-control" name="email" id="validationCustom011"
                               value="${employeeCreate.email}" placeholder="Employee email" required>
                        <c:if test="${errEmployeeEmail != null}">
                            <p style="color: red">${errEmployeeEmail}</p>
                        </c:if>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom012" class="form-label">Employee salary</label>
                        <input type="text" class="form-control" name="salary" id="validationCustom012"
                               value="${employeeCreate.salary}" placeholder="Employee salary" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom08" class="form-label">Position</label><br>
                        <select class="form-select p-1" name="position" id="validationCustom08" required>
                            <option ${employeeCreate.position == "1" ? "selected" : ""} value="1">Lễ tân</option>
                            <option ${employeeCreate.position == "2" ? "selected" : ""} value="2">Phục vụ</option>
                            <option ${employeeCreate.position == "3" ? "selected" : ""} value="3">Chuyên viên</option>
                            <option ${employeeCreate.position == "4" ? "selected" :""} value="4">Giám sát</option>
                            <option ${employeeCreate.position == "5" ? "selected":""} value="5">Quản lý</option>
                            <option ${employeeCreate.position == "6" ? "selected":""} value="6">Giám đốc</option>
                        </select>
                        <div class="invalid-feedback">
                            Please select a valid state.
                        </div>
                    </div>
                    <div class="col-md-12 py-2">
                        <label for="validationCustom10" class="form-label">Education degree</label><br>
                        <select class="form-select p-1" name="degree" id="validationCustom10" required>
                            <option ${employeeCreate.degree == "1" ? "selected" : ""} value="1">Trung cấp</option>
                            <option ${employeeCreate.degree == "2" ? "selected" : ""} value="2">Cao đẳng</option>
                            <option ${employeeCreate.degree == "3" ? "selected" : ""} value="3">Đại học</option>
                            <option ${employeeCreate.degree == "4" ? "selected" : ""} value="4">Sau đại học</option>
                        </select>
                        <div class="invalid-feedback">
                            Please select a valid state.
                        </div>
                    </div>
                    <div class="col-12 mt-3">
                        <button class="btn btn-primary py-2" type="submit">create</button>
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
