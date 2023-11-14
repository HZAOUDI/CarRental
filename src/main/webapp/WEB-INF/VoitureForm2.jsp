 <%@ page language="java"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
 <%@ page import="org.bson.Document" %>
 <%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voiture Form</title>
</head>
<body>
<title></title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	 <%@include file="includes/navBar.jsp" %>
	
	<br><br><br><br><br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
<form action="${pageContext.request.contextPath}/Voiture/insert" method="post">


  
	<fieldset class="form-row col-md-6">
	  <label >Matricule</label>
	 <input type="text"
	 class="form-control"
	 name="Matricule" placeholder="Matricule"required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >Marque</label>
	 <input type="text"
	 class="form-control"
	  name="Marque" placeholder="Marque" required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >Modèle</label>
	 <input type="text"
	 class="form-control"
	  name="Modèle" placeholder="Modèle" required="required">
	</fieldset>
    
   <fieldset class="form-row col-md-6">
	  <label >Kilométrage</label>
	 <input type="text"
	 class="form-control"
	  name="Kilométrage" placeholder="Kilométrage" required="required">
	</fieldset>
   <fieldset class="form-row col-md-8">
	  <label >Année</label>
	 <input type="text"
	 class="form-control"
	  name="Annee"  placeholder="Année" required="required">
	</fieldset>

   <fieldset class="form-row col-md-8">
	  <label >Couleur</label>
	 <input type="text"
	 class="form-control"
	  name="Couleur"   placeholder="Couleur" required="required">
	</fieldset>
 <fieldset class="form-row col-md-8">
	  <label >Prix</label>
	 <input type="text"
	 class="form-control"
	  name="prix"  placeholder="Prix" required="required">
	</fieldset>
	<br>
 <fieldset class="form-row col-md-8">
	  <button type="submit" class="btn btn-primary">Ajouter</button>
	
	</fieldset>

		</form>
			</div>
		</div>
	</div>
</body>
</html>