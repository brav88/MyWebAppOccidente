<%-- 
  Document   : cars-form
  Created on : 11 feb 2026, 8:07:50 p. m.
  Author     : Personal
--%>

<%@page import="java.util.List"%>
<%@page import="model.pckg.myapp.Catalog"%>
<%@page import="model.pckg.myapp.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>    
    <body> 
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold" href="CarsServlet">
                    🚗 Price Auto Sales
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
        <%
            Car car = (Car) request.getAttribute("car");
            List<Catalog> carTypeList = (List<Catalog>) request.getAttribute("carTypeList");
            List<Catalog> fuelTypeList = (List<Catalog>) request.getAttribute("fuelTypeList");
            List<Catalog> transmissionList = (List<Catalog>) request.getAttribute("transmissionList");
        %>   

        <div class="d-flex justify-content-center align-items-center">
            <div class="card" style="width: 18rem;margin-top:20px">
                <div class="card-header">
                    <h3><%= (car == null) ? "Create new car" : "Modify car"%></h3>
                </div>
                <div class="card-body">
                    <form method="POST" action="CarsServlet"> 
                        <input type="hidden" name="txtCarId" value="<%= (car == null) ? "" : car.getId()%>" readonly/><br>

                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="txtBrand" id="txtBrand" placeholder="Toyota" value="<%= (car == null) ? "" : car.getBrand()%>">
                            <label for="txtBrand">Brand</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="txtModel" id="txtModel" placeholder="Corolla" value="<%= (car == null) ? "" : car.getModel()%>" >
                            <label for="txtModel">Model</label>
                        </div>
                        <div class="form-floating mb-3">
                            <select class="form-select" name="selCarType" aria-label="Default select example">              
                                <% for (Catalog cat : carTypeList) {%>
                                <option value="<%=cat.getId()%>"
                                        <%= (car == null) ? "" : (cat.getId() == car.getCarType()) ? "selected" : ""%>                                                                                     
                                        ><%=cat.getDescription()%></option>                                    
                                <%}%> 
                            </select>
                        </div>
                        <div class="form-floating mb-3">
                            <select class="form-select" name="selFuelType" aria-label="Default select example">                                    
                                <% for (Catalog cat : fuelTypeList) {%>
                                <option value="<%=cat.getId()%>" 
                                        <%= (car == null) ? "" : (cat.getId() == car.getFuelType()) ? "selected" : ""%>
                                        ><%=cat.getDescription()%></option>                                    
                                <%}%>                        
                            </select>
                        </div>    
                        <div class="form-floating mb-3">
                            <select class="form-select" name="selTransmission" aria-label="Default select example">                                    
                                <% for (Catalog cat : transmissionList) {%>
                                <option value="<%=cat.getId()%>" 
                                        <%= (car == null) ? "" : (cat.getId() == car.getTransmission()) ? "selected" : ""%>                                            
                                        ><%=cat.getDescription()%></option>                                    
                                <%}%>                      
                            </select>
                        </div>    
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="txtCC" id="txtCC" placeholder="Corolla" value="<%= (car == null) ? "" : car.getCC()%>" >
                            <label for="txtCC">CC</label>
                        </div>    
                        <button class="btn btn-primary" type="submit"><%= (car == null) ? "Save" : "Update"%></button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
