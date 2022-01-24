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
                        <i class="fas fa-home"></i>
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
                <form method="get" action="/employee" class="d-flex mt-3">
                    <input name="action" value="search" hidden>
                    <input class="form-control me-2" type="search" name="nameSearch" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-1 border p-1" style="min-height: 500px">
            <a href="/employee?action=create" class="btn btn-success mt-3">Add New</a>
        </div>
        <div class="col-lg-11 border p-3" style="min-height: 500px">
            <table id="employee" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Id employee</th>
                    <th scope="col">Employee name</th>
                    <th scope="col">Position</th>
                    <th scope="col">Education degree</th>
                    <th scope="col">Employee birthday</th>
                    <th scope="col">Employee id card</th>
                    <th scope="col">Employee phone</th>
                    <th scope="col">Employee email</th>
                    <th scope="col">Employee salary</th>
                    <th scope="col">Delete</th>
                    <th scope="col">Edit</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="employee" items="${employeeList}">
                    <tr>
                        <td> ${employee.employeeCode}</td>
                        <td> ${employee.firstName} ${employee.lastName}</td>
                        <td> ${employee.position}</td>
                        <td> ${employee.degree}</td>
                        <td> ${employee.dateOfBirth}</td>
                        <td> ${employee.identityCardNumber}</td>
                        <td> ${employee.telephoneNumber}</td>
                        <td> ${employee.email}</td>
                        <td> ${employee.salary}</td>
                        <td>
                            <button type="button" class="btn btn-danger" href="/employee?action=delete"
                                    onclick="setValueForm('${employee.employeeCode}')"
                                    data-toggle="modal" data-target="#modalDelete">
                                delete
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger">
                                <a class="text-decoration-none text-white" href="/employee?action=edit&idEmployee=${employee.employeeCode}">Edit</a>
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
                        <form method="post" action="/employee?action=delete">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Delete Confirmation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <input name="idEmployee" id="idEmployee" hidden>

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
        $('#employee').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4
        })
    })
</script>
<script>
    function setValueForm(idProduct) {
        document.getElementById("idEmployee").value = idProduct;
    }
</script>
</body>
</html>
