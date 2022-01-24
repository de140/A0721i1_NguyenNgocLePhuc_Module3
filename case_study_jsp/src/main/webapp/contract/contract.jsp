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
            <img width="100px"
                 src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOAAAADhCAMAAADmr0l2AAAAz1BMVEX///8oJ4EAAHgAAHUTEXsUE3va2uampcStrcjh4eomJYDd3eghIH8VFHsfHn6hocDxWilra6ANC3qvrsm0tMzCwtaYmLvy8vZ4eKcZGHxZWZeRkbfJydrwRgDq6vEAAG83NodPTpJCQYyEhK/xUhhFRY0vLoRjYpxtbaHQ0N92daaIiLH96+e8vNH1iW4AAH34vK8AIoabfp34d1C5Sk/5WBb0gmWlsdB4K2H6y8L/9vT2moX0a0OdOVSOl7/VUj5CLHvKl5/LQzbOUETmtLC/13PXAAAEDklEQVR4nO3YDXObNhzHcUBgYwU/BPwQYsexYydesnhtt6Vd0+6p2/t/TZNAErJzl7WXW+bkvp+73oU/QuhXsBAEAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPAqdVpGx5WObGneNJu3Gke7PbjmfvuJK7rSzjn0/omr+wfNvfb7p/p2RRlZmSmthCuJxcg2PI884mbiehh7zS9scX7qquczO3rVRe4Om4rovKj+Ss8j0ffObMojc6an5TuJZGjIRV1adF1JFUVhWorQV0b2WrRF0zxbmmJH9FwxdwFFKMPm/6UbxsM6YBwmbb3/Mq4O6G3qsFW/MnpSvpEadhbXclmVpnFTUlGlmDQBTTlOZJjZoWZqHD1Td1fwKgtl1xb/LWBRB5xFmeqpVP+OVdsLPYzkyQGXWZhtirQ2tAPOlnWpGMcyzIcuYDKsGxbplQyjkav3vrNdmNp1FMqyb4ptezc/HnCqrpiMbqalDjjSYeNlmjw1oLpBxV5JDbjpU42i23f1pqk6c1OX8X63asjl9MHJHglYjje5/j0Mg04UZsc6bCi+rzr/LwJ6QeKvCZgFe6ohPzjZIwHDUl2x8kr9ro8idWuq+zSLZsFrCqhEx3pDB9S/9suJ6fy1BJQirTaqgFLfnqbzFxZQuq1x6QfsSfPY0QGlncAOJuD8yDCLEBfwtmV2mBsuzLedutC6UBP01rZ2D1AdUCZuLXMYAdUg9lYyJuD9D2dvzI5TXV7qud821fPk3Lbutr2AvWNvMAcR8MFKpg749mw9eGd2VAGvvUWPnkhuXOvksAPKxMibK5j8+NPZYDCIVLW0AYOtiEv9QFDLgLIrNsELCShl0TbM5FDk8uc7Fe/s/Yd2O1WLExMwmKSr1UYt4y5XJ2P3lnH4AR/Moh9+UekG6/VHO2YbUJvlYe/Eb/3yAt6/ry7fJ7PZ2g04evEB9eQyWH++tduvLODtZxVvcPfrb65y0AGTrwnY9Q7/pOfOu9//yJuVTOd/DLiQ6r2mY9SP3dwrXav9ceoCRnNT18uQuHD1OLVdfFzru3PwZy7lomWLK/WK5314eNaAY/2mYtcW9Z12UnqlZrlRPdDdxxddt2/66u/ElN98MZNL9fJqqQ7d4vK5AwZXZfP5ZVFVJiLzlxvRyp3LJ4Ud0qbpIXz3l5lc0r01i3eHPnPA4FTEdhliXmXmF66U5MK9mJ8nDbWgHNr6REZN8y9nb82gRd603v0ythVJtFNoi8R8VdMB1d6N26VOuj9HfLOOW4a4MbdSW9o2Xwe3bc/M72Hmyv2/71115KrF3G8dzPvt/my/4JpM1EZzP+ujnxoQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwKH6B13XTUpsxfAzAAAAAElFTkSuQmCC">
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
                <form class="d-flex mt-3">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
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
        <div class="col-lg-11 border p-5" style="min-height: 500px">
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
                                <a class="text-decoration-none text-white" href="/customer?action=edit&idCustomer=${customer.customerCode}">Edit</a>
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
