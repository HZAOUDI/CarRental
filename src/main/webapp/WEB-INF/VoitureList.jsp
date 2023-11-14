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
    <title>Voiture Management Application</title>
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
        <h3 class="text-center">List of Cars</h3>
        <hr>
        <div class="container text-left">
        
            <a href="${pageContext.request.contextPath}/Voiture/Form" class="btn btn-success">Add New Car</a>

        </div>
        <br>
                <%
List<Document> listVoiture = (List<Document>) request.getAttribute("listVoiture");
%>
        
            
        <table class="table table-bordered">
            <thead>
            <tr>
             <th>Voiture</th>
            <th>Matricule</th>
            <th>Marque</th>
            <th>Modele</th>
            <th>Kilometrage</th>
            <th>Annee</th>
            <th>TypeCarburant</th>
            <th>Couleur</th>
            <th>Prix</th>
             <th>Action</th>
            </tr>
            </thead>
           
            <tbody>
           <%-- Loop through the listVoiture and display each document --%>
            <% for (Document voiture : listVoiture) { %>
                <tr>
                <% String imageUrl = voiture.getString("Image"); %>
            <tr>
                <td><img width="80px" height="60px"  src="<%= imageUrl %>" alt="product image" /></td>
                  <td><%= voiture.get("Matricule") %></td>
                  <td><%= voiture.get("Marque") %></td>
                  <td><%= voiture.get("Modèle") %></td>
                  <td><%= voiture.get("Kilométrage") %></td>
                  <td><%= voiture.get("Année") %></td>
                  <td><%= voiture.get("Type de carburant") %></td>
                  <td><%= voiture.get("Couleur") %></td>
                   <td><%= voiture.get("Prix") %></td>
                  <%String action = request.getServletPath(); %>
                  
                  <td><a href="${pageContext.request.contextPath}/Voiture/UpdateVoiture?id=<%= voiture.get("Matricule") %>">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a>
                  <td><a href="${pageContext.request.contextPath}/Voiture/delete?id=<%= voiture.get("Matricule") %>">Delete</a>

                    <!-- Access other properties of the voiture document -->
                </tr>
            <% } %>
        </tbody>
    </table>
    </div>
</div>
</body>
</html>

