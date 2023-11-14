<%@ page language="java"%>
    <%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
 <%@ page import="org.bson.Document" %>
 <%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	 <%@include file="includes/navBar.jsp" %>
<br><br><br><br>
		
		<center><h2>Modifier une voiture</h2></center>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
<form action="${pageContext.request.contextPath}/Voiture/Update" method="post">
	
  
  <% Document Voiture = (Document)request.getAttribute("Voiture"); %>

 
	<fieldset class="form-row col-md-6">
	  
	 <input type="hidden"
	 class="form-control"  value="<%= Voiture.get("Matricule") %>"
	 name="Matricule" placeholder="Matricule"required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >Marque</label> 
	 <input type="text"
	 class="form-control" value="<%= Voiture.get("Marque") %>"
	  name="Marque" placeholder="Marque" required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >Modèle</label>
	 <input type="text" value="<%= Voiture.get("Modèle") %>"
	 class="form-control"
	  name="Modele" placeholder="Modèle" required="required">
	</fieldset>
    
   <fieldset class="form-row col-md-6">
	  <label >Kilométrage</label>
	 <input type="text" value="<%= Voiture.get("Kilométrage") %>"
	 class="form-control"
	  name="Kilometrage" placeholder="Kilométrage" required="required">
	</fieldset>
   <fieldset class="form-row col-md-8">
	  <label >Année</label>
	 <input type="text"
	 class="form-control" value="<%= Voiture.get("Année") %>"
	  name="Annee"  placeholder="Année" required="required">
	</fieldset>

   <fieldset class="form-row col-md-8">
	  <label >Couleur</label>
	 <input type="text"
	 class="form-control" value="<%= Voiture.get("Couleur") %>"
	  name="Couleur"   placeholder="Couleur" required="required">
	</fieldset>
 <fieldset class="form-row col-md-8">
	  <label >Prix</label>
	 <input type="text"
	 class="form-control"value="<%= Voiture.get("Prix") %>"
	  name="prix"  placeholder="Prix" required="required">
	</fieldset> -
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