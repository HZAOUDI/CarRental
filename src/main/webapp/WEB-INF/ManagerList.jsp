<%@ page language="java"%>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
 <%@ page import="org.bson.Document" %>
 <%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

 <%@include file="includes/navBar.jsp" %>

<br>

<div class="row">
    <div class="container">
        <h3 class="text-center">List of Managers</h3>
        <hr>
        <div class="container text-left">
        
            <a href="${pageContext.request.contextPath}/Manager/Form" class="btn btn-success">Add New Manager</a>

        </div>
        <br>
                <%
List<Document> listManager = (List<Document>) request.getAttribute("listManager");
%>
        
            
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Num Manager</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>CIN</th>
                <th>Email</th>
                <th>Adresse</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
           <%-- Loop through the listManager and display each document --%>
            <% for (Document manager : listManager) { %>
                <tr>
                  <td><%= manager.get("N_manager") %></td>
                  <td><%= manager.get("Nom") %></td>
                  <td><%= manager.get("Prenom") %></td>
                  <td><%= manager.get("CIN") %></td>
                  <td><%= manager.get("Login") %></td>
                  <td><%= manager.get("adress") %></td>
                  <%String action = request.getServletPath(); %>
                  
                  <td><a href="${pageContext.request.contextPath}/Manager/UpdateManager?id=<%= manager.get("N_manager") %>">Edit</a>
	&nbsp;&nbsp;&nbsp;&nbsp; <a>
                  <td><a href="${pageContext.request.contextPath}/Manager/delete?id=<%= manager.get("N_manager") %>">Delete</a>

                    <!-- Access other properties of the manager document -->
                </tr>
            <% } %>
        </tbody>
    </table>
    </div>
</div>
</body>
</html>
