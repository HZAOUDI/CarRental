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
    <meta charset="UTF-8">
    <title>Add Reservation</title>
    <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css2/util.css">
	<link rel="stylesheet" type="text/css" href="css2/main.css">
<!--===============================================================================================-->
    
    
</head>
<body>
 <%@include file="includes/navBar.jsp" %>

    <h1>Ajouter Reservation</h1>
 <%
 Document voitureReservee = (Document) request.getAttribute("reservationId");
 System.out.println("Voiture réservée : " + voitureReservee);

%>

<section class="product-section" class="section-p1">
  
        

 
            
  </div>
</section> 

<div class="container-contact100">

		<div class="wrap-contact100">
  <% if (voitureReservee != null && !voitureReservee.isEmpty()) { %>
  <div class="pro-collection">
      
      
          
          <div class="product-cart">
          <% String imageUrl = voitureReservee.getString("Image"); %>

         <center>
            <img src="<%= imageUrl %>" alt="product image"  style="border-radius: 50%;"/>
</center>

            <%-- Afficher les détails de la réservation --%>
           

           

            <% Object prixLocObj = voitureReservee.get("Prix");
               if (prixLocObj != null && prixLocObj instanceof Double) {
                 double prixLoc = (Double) prixLocObj;
            %>
             
               <h4 class="price">$ <%= prixLocObj %></h4>
            <% } %>

           
            
             
    	
  
    	       
                                     <!-- Afficher le bouton pour changer l'état -->
  </div>
               <%
    }
%>                  
   			 <form method="post" action="InsererReservation">
   			 
	   			 <span class="contact100-form-title">
						Formulaire de reservation
				</span>
	    
	         <input type="hidden" name="voitureId" value="<%= voitureReservee.getObjectId("_id").toString() %>" />
	         <label for="mySelect">Client :</label>
	         
	         <input type="number" id="myInput" oninput="filterOptions()" placeholder="Enter number">
	         
			<select id="mySelect" name="client" required>
			<option value="">-- Sélectionnez un client --</option>
			<%
			List<Document> listClient = (List<Document>) request.getAttribute("listClient");
		  
			  for (Document client : listClient) { %>
	                <tr>
				
			    <option value="<%= client.get("N_client") %><"><%= client.get("N_client") %></option>
			    
			    <%} %>
			    
			</select><br><br>
			
			
			<!-- 
	        <label for="DateDebut"> Date debut:</label>
	        <input type="date" id="DateDebut" name="DateDebut" required><br><br> 
	        -->
	        
			<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Entrez votre date debu">
				<span class="label-input100">Date debut:</span>
				<input class="input100" id="DateDebut" type="date" name="DateDebut" required>
			</div>
	        
			<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Entrez votre date fin">
				<span class="label-input100">Date Fin:</span>
				<input class="input100" id="DateFin" name="DateFin"  type="date" name="DateFin">
			</div>
	        
	        <!-- 
	        <label for="DateFin"> Date Fin:</label>
	        <input type="date" id="DateFin" name="DateFin" required><br><br>
	         -->
	         
	        <!--  
	        <label for="modePaiement">Mode Payment :</label>
			<select id="modePaiement" name="modePaiement" required>
			    <option value="Cheque">Cheque</option>
			    <option value="Cash">Cash</option>
			    <option value="CreditCard">Credit Card</option>
			</select><br><br>  -->
			
			<div class="wrap-input100 input100-select bg1">
				<span class="label-input100">Mode Payment : </span>
				<div>
					<select id="modePaiement" name="modePaiement" required class="js-select2" id="ville" name="ville">
						 	<option value="Cheque">Cheque</option>
			    			<option value="Cash">Cash</option>
			    			<option value="CreditCard">Credit Card</option>
					</select>
					<div class="dropDownSelect2"></div>
				</div>
			</div>
			
	
	        <!-- 
	        <label for="status">Status:</label>
	        <input type="text" id="status" name="status" value="En attente" required><br><br>
	         -->
	         
	        <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Entrez votre status">
				<span class="label-input100">Status </span>
				<input class="input100" type="text"  id="status" name="status" value="En attente" required>
			</div>
	        
	        
	        <!-- 
	        <label for="Prix_loc">Prix_loc:</label>
	        <input type="number" id="Prix_loc" name="Prix_loc" value="<%= voitureReservee.getInteger("Prix") %>" required><br><br>
	         -->
	         
	         <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Entrez votre prix">
				<span class="label-input100">Prix_loc: </span>
				<input class="input100"  type="number" id="Prix_loc" name="Prix_loc" value="<%= voitureReservee.getInteger("Prix") %>" required>
			</div>
	         
	         
	        
	        
	        <!--  
	        <label for="Caution">Caution:</label>
	        <input type="number" id="Caution" name="Caution" required><br><br>
	        -->
	        
	        <div class="wrap-input100 bg1 rs1-wrap-input100">
				<span class="label-input100">Caution</span>
				<input class="input100"  type="number" id="Caution" name="Caution" required placeholder="Entrez votre caution">
			</div>
			
	        <!-- 
	        <label for="Matricule">Matricule:</label>
	        <input type="text" id="Matricule" name="Matricule" value="<%= voitureReservee.getString("Matricule") %>" required><br><br>
	         -->
	         
	        <div class="wrap-input100 validate-input bg1" data-validate="Entrez Mattricule">
				<span class="label-input100">Matricule *</span>
				<input type="text" id="Matricule" name="Matricule" value="<%= voitureReservee.getString("Matricule") %>" required >
			</div>
	        
	        
	        <!-- <input type="submit" class="contact100-form-btn" value="Add Reservation">  -->
	        
	        <div class="container-contact100-form-btn">
				  <input type="submit" class="contact100-form-btn" value="Add Reservation">
			</div>
        
    </form>
    
   	</div>
</div>
   
   
   
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});


			$(".js-select2").each(function(){
				$(this).on('select2:close', function (e){
					$('.js-show-service').slideUp();
					$('.js-show-service').slideDown();
					
				});
			});
		})
	</script>
<!--===============================================================================================-->
<!--Appel du JS-->
	<script src="js/main.js"></script>
<!--===============================================================================================-->
    
    
</body>
</html>

<script>
function filterOptions() {
	  var input, select, options, option, i;
	  input = document.getElementById("myInput");
	  select = document.getElementById("mySelect");
	  options = select.getElementsByTagName("option");
	  var filter = parseInt(input.value);

	  for (i = 0; i < options.length; i++) {
	    option = options[i];
	    if (parseInt(option.value) == filter) {
	      option.style.display = "";
	    } else {
	      option.style.display = "none";
	    }
	  }

	  // Show the select element if any options are displayed
	}
</script>