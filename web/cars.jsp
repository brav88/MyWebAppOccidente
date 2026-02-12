<%-- 
    Document   : cars
    Created on : 11 feb 2026, 6:20:14 p. m.
    Author     : Personal
--%>

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
        <style>table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }</style>
    </head>
    <body>
        <a href="cars-form.jsp">Create new car</a>
        <%
            List<Car> carList = (List<Car>) request.getAttribute("carList");
        %>        
        <table>
            <tr>                
                <th>Brand</th>
                <th>Model</th>
                <th>CC</th>              
            </tr>
            <% for (Car car : carList) {%>
            <tr>              
                <td><%=car.getBrand()%></td>
                <td><%=car.getModel()%></td>
                <td><%=car.getCC()%></td>
            </tr>
            <%}%>
        </table>
        <a href='index.jsp'>Regresar</a>
    </body>
</html>
