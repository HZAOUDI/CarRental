<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Form</title>
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
	
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
<form action="${pageContext.request.contextPath}/Manager/insert" method="post">


  
	<fieldset class="form-row col-md-6">
	  <label >Numéro Manager</label>
	 <input type="text"
	 class="form-control"
	 name="N_manager" placeholder="Numéro Manager"required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >CIN</label>
	 <input type="text"
	 class="form-control"
	  name="CIN" placeholder="CIN" required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >Nom</label>
	 <input type="text"
	 class="form-control"
	  name="Nom" placeholder="Nom" required="required">
	</fieldset>
    
   <fieldset class="form-row col-md-6">
	  <label >Prenom</label>
	 <input type="text"
	 class="form-control"
	  name="Prenom" placeholder="Prenom" required="required">
	</fieldset>
   <fieldset class="form-row col-md-8">
	  <label >Email</label>
	 <input type="Email"
	 class="form-control"
	  name="Login"  placeholder="Email" required="required">
	</fieldset>

   <fieldset class="form-row col-md-8">
	  <label >Mot de passe</label>
	 <input type="Password"
	 class="form-control"
	  name="Password"   placeholder="Mot de passe" required="required">
	</fieldset>
 <fieldset class="form-row col-md-8">
	  <label >Adresse</label>
	 <input type="text"
	 class="form-control"
	  name="adress"  placeholder="Adresse" required="required">
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