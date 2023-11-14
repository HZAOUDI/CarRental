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
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Update Manager</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
<form action="${pageContext.request.contextPath}/Manager/Update" method="post">
	
  
  <% Document Manager = (Document)request.getAttribute("Manager"); %>

 
	<fieldset class="form-row col-md-6">
	  
	 <input type="hidden"
	 class="form-control"  value="<%= Manager.get("N_manager") %>"
	 name="N_manager" placeholder="Numéro Manager"required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >CIN</label> 
	 <input type="text"
	 class="form-control" value="<%= Manager.get("CIN") %>"
	  name="CIN" placeholder="CIN" required="required">
	</fieldset>
	<fieldset class="form-row col-md-6">
	  <label >Nom</label>
	 <input type="text" value="<%= Manager.get("Nom") %>"
	 class="form-control"
	  name="Nom" placeholder="Nom" required="required">
	</fieldset>
    
   <fieldset class="form-row col-md-6">
	  <label >Prenom</label>
	 <input type="text" value="<%= Manager.get("Prenom") %>"
	 class="form-control"
	  name="Prenom" placeholder="Prenom" required="required">
	</fieldset>
   <fieldset class="form-row col-md-8">
	  <label >Email</label>
	 <input type="Email"
	 class="form-control" value="<%= Manager.get("Login") %>"
	  name="Login"  placeholder="Email" required="required">
	</fieldset>

   <fieldset class="form-row col-md-8">
	  <label >Mot de passe</label>
	 <input type="Password"
	 class="form-control" value="<%= Manager.get("Password") %>"
	  name="Password"   placeholder="Mot de passe" required="required">
	</fieldset>
 <fieldset class="form-row col-md-8">
	  <label >Adresse</label>
	 <input type="text"
	 class="form-control"value="<%= Manager.get("adress") %>"
	  name="adress"  placeholder="Adresse" required="required">
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