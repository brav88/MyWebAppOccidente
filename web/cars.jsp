<%-- 
    Document   : cars
    Created on : 11 feb 2026, 6:20:14 p. m.
    Author     : Personal
--%>

<%@page import="model.pckg.myapp.User"%>
<%@page import="java.util.List"%>
<%@page import="model.pckg.myapp.Car"%>
<%@page import="database.pckg.myapp.Database"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
        <%
            User user = (User) session.getAttribute("User");
            List<Car> carList = (List<Car>) request.getAttribute("carList");
        %>  
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold" href="CarsServlet">
                    🚗 Price Auto Sales welcome <%=user.getName()%>
                </a>
                <button class="navbar-toggler" type="button" 
                        data-bs-toggle="collapse" 
                        data-bs-target="#navbarSupportedContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" href="CarsServlet">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                Inventory
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="CatalogServlet?path=cars-form.jsp">
                                Add New Car
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" 
                               role="button" data-bs-toggle="dropdown">
                                Management
                            </a>
                            <ul class="dropdown-menu">                                                               
                                <li><a class="dropdown-item" href="CarsServlet">Manage Cars</a></li>
                                <li><a class="dropdown-item" href="">Sales</a></li>
                                <li><a class="dropdown-item" href="">Customers</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item text-danger" href="">Logout</a></li>
                            </ul>
                        </li>
                    </ul>                   
                </div>
            </div>
        </nav>        
        <div class="container text-center" style="margin-top:5rem">
            <div class="row">               
                <% for (Car car : carList) {%>
                <div class="col">
                    <div class="card" style="width: 18rem;margin-top:5px">
                        <img src="https://static.vecteezy.com/system/resources/previews/000/623/239/non_2x/auto-car-logo-template-vector-icon.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%=car.getBrand()%> <%=car.getModel()%> <%=car.getCC()%>cc</h5>
                            <p class="card-text"></p>
                            <a href="CarsServlet?action=Edit&carId=<%=car.getId()%>" class="btn btn-primary">Edit</a>                            
                            <a href="CarsServlet?action=Delete&carId=<%=car.getId()%>" class="btn btn-danger">Delete</a>                            
                        </div>
                    </div>
                </div>
                <%}%>       
            </div>            
        </div>           
    </body>
</html>
