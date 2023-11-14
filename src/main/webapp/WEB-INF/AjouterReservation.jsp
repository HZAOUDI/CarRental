<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@include file="includes/navBar.jsp" %>
 
 <br/><br/><br/><br/><br/><br/><br/><br/><br/>
 
 
<form action="AjouterReservation" method="post">
  <label for="date_debut">Date de début :</label>
  <input type="date" id="date_debut" name="date_debut">

  <label for="date_fin">Date de fin :</label>
  <input type="date" id="date_fin" name="date_fin">

  <input type="submit" value="Valider">
</form>

</body>
</html>

<style>
form {
  display: flex;
  flex-direction: column;
  max-width: 300px;
  margin: 0 auto;
}

label {
  margin-bottom: 5px;
}

input[type="date"] {
  padding: 5px;
  border-radius: 3px;
  border: 1px solid #ccc;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 15px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
}

</style>