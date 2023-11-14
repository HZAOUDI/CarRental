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
<meta charset="ISO-8859-1">
<title>Client Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
 <%@include file="includes/navBar.jsp" %>

	<br>	<br><br><br><br><br>
			<center><h2>Modifier un client</h2></center>
	
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
<form action="${pageContext.request.contextPath}/Client/Update" method="post">
	
  <% Document Client = (Document)request.getAttribute("Client"); %>

 
	<fieldset class="form-row col-md-6">
	  
	 <input type="hidden"
	 class="form-control"  value="<%= Client.get("N_client") %>"
	 name="N_client" placeholder="Numéro Client"required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >CIN</label> 
	 <input type="text"
	 class="form-control" value="<%= Client.get("CIN") %>"
	  name="CIN" placeholder="CIN" required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >Nom</label>
	 <input type="text" value="<%= Client.get("Nom") %>"
	 class="form-control"
	  name="Nom" placeholder="Nom" required="required">
	</fieldset>
    
   <fieldset class="form-row col-md-6">
	  <label >Prenom</label>
	 <input type="text" value="<%= Client.get("Prenom") %>"
	 class="form-control"
	  name="Prenom" placeholder="Prenom" required="required">
	</fieldset>
   <fieldset class="form-row col-md-8">
	  <label >Email</label>
	 <input type="Email"
	 class="form-control" value="<%= Client.get("Login") %>"
	  name="Email"  placeholder="Email" required="required">
	</fieldset>

   
 <fieldset class="form-row col-md-8">
	  <label >Adresse</label>
	 <input type="text"
	 class="form-control"value="<%= Client.get("Adress") %>"
	  name="Adress"  placeholder="Adresse" required="required">
	</fieldset>
	<br>
 <fieldset class="form-row col-md-8">
	  <button type="submit" class="btn btn-primary">Modifier</button>
	
	</fieldset>

		</form>
			</div>
		</div>
	</div>
	
</body>
</html>