<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.bson.Document" %>
<%@ page import="java.util.List" %>
<%@ page import="org.bson.Document" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@include file="includes/navBar.jsp" %>
   <section id="hero">
      
        <h2>Chose Your Car</h2>
        <h1>Now</h1>
       
        <button>Shop now</button>
      </section>
 
  <%
List<Document> listVoiture = (List<Document>) request.getAttribute("reserv");
 System.out.println("Caaaaaaaaaaaaaaars"+listVoiture);
%>
 <br/><br/>

 
 <section class="product-section" class="section-p1">
  
      <% if (listVoiture != null && !listVoiture.isEmpty()) { %>
  <div class="pro-collection">
      
        <% for (Document voiture : listVoiture) { %>
          
          <div class="product-cart">
          <% String imageUrl = voiture.getString("Image"); %>

          
            <img src="<%= imageUrl %>" alt="product image" />
                      <p> <span> <%= voiture.getString("Matricule") %>&nbsp;&nbsp;  <%= voiture.getString("Marque") %> <%= voiture.getString("Modèle") %></span></p>

            <p><strong><%= voiture.getInteger("Kilométrage") %> Km</strong></p>
            <p><strong><%= voiture.getInteger("Année") %></strong></p>
<p><span style="color: #088178; font-size: 16px; font-weight: bold;">$<%= voiture.getInteger("Prix") %></span></p>

            <%-- Afficher les détails de la réservation --%>
           

           

            <% Object prixLocObj = voiture.get("Prix");
               if (prixLocObj != null && prixLocObj instanceof Double) {
                 double prixLoc = (Double) prixLocObj;
            %>
             
               <h4 class="price">$ <%= prixLocObj %></h4>
            <% } %>

           
            
             
   	<form action="Reserver" method="post">
                                       <input type="hidden" name="reservationId" value="<%= voiture.getObjectId("_id").toString() %>" />
                                       <button type="submit" id="myButton">Reserver</button>
                                   </form> <br/>
  
    	       
                                     <!-- Afficher le bouton pour changer l'état -->
  </div>
               <%
    }
%>                      

        <% } %>
 
            
  </div>
</section> 
    
  
  
 
 <!--footer section-->
<br/><br/><br/><br/><br/><br/>
    <footer>
      <div id="footer">
        <div class="contact">
          <a href="indext.html"><img src="images/logo.png" alt="" /></a>
          <br> <br>
          <br> 
          <h3>Contact</h3>
          <address>
            <p><b>Address:</b> Wellington Road, Street 32. San Francisco</p>
            <p><b>Phone:</b> Wellington Road, Street 32. San Francisco</p>
            <p><b>Hours</b> 10:00 - 18:00. Mon - Sat</p>
          </address>
          <h3>Follow Us</h3>
          <br> 
          <div class="socials">
            <a href="#"><i class="fa-brands fa-facebook-square"></i></a>
            <a href="#"><i class="fa-brands fa-youtube"></i></a>
            <a href="#"><i class="fa-brands fa-telegram"></i></a>
            <a href="#"><i class="fa-brands fa-instagram"></i></a>
            <a href="#"><i class="fa-brands fa-twitter"></i></a>
          </div>
        </div>
        <div class="about">
          <h3>About</h3>
          <br> 
          <a href="#">About Us</a>
          <a href="#">Delivery Information</a>
          <a href="#">Privacy Policy</a>
          <a href="#">Terms & Conditions</a>
          <a href="#">Contact Us</a>
        </div>
        <div class="myaccount ">
          <h3>My account</h3>
          <br> 
          <a href="#">Sign In</a>
          <a href="#">View Cart</a>
          <a href="#">My Wishlist</a>
          <a href="#">Track My Order</a>
          <a href="#">Help</a>
        </div>
        <div class="install">
          <h3>Install App</h3>
          <br> 
          <p>From App Store or Google Play</p>
          <div class="download">
            <a href="#"><img src="images/pay/app.jpg" alt=""></a>
            <a href="#"><img src="images/pay/play.jpg" alt=""></a>
          </div>
          <p>Secured Payment Gateways</p>
          <img src="images/pay/pay.png" alt="">
        </div>
        
      </div>
    </footer>
 
     
       <script
      src="https://kit.fontawesome.com/0e53af926d.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>

<style>
@import url("https://fonts.googleapis.com/css2?family=League+Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap");

/* hero section styles */
#myButton {
  background-color: orange; /* Set background color */
  border: none; /* Remove default button border */
  color: white; /* Set text color */
  padding: 10px 20px; /* Add padding to the button */
  text-align: center; /* Center text horizontally */
  text-decoration: none; /* Remove default text decoration */
  display: inline-block; /* Make the button a block element */
  font-size: 16px; /* Set font size */
  cursor: pointer; /* Add a cursor effect on hover */
  border-radius: 4px; /* Add rounded corners */
}

#myButton:hover {
  background-color: #45a049; /* Change background color on hover */
}
.interval {
  background-color: #f2f2f2;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.date {
  display: block;
  margin-bottom: 5px;
}
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


#hero {
  background-image: url(images/caar.jpg);
  width: 100%;
  height: 90vh;
  background-size: cover;
/*   background-position: top -80% right 0;
 */  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: center;
  padding: 0 80px;
}

#hero h4 {
  padding-bottom: 15px;
  font-size: 40px;
}
#hero h2{
  font-size: 70px;

}
#hero h1 {
  color: #088178;
  font-size: 70px;

}
#hero button {
  background-color: transparent;
  background-image: url(images/button.png);
  background-repeat: no-repeat;
  background-size: cover;
  width: 260px;
  height: 60px;
  border: 0;
  cursor: pointer;
  font-size: 20px;
  font-weight: 700;
  color: #088178;
  padding: 14px 65px 14px 65px;
}

/* feature section styles */

.product-section .pro-collection {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  margin: 0 60px;
}
.product-section h1,
.product-section p {
  text-align: center;
}
.product-section .product-cart {
  width: 380px;
  border: 1px solid #ebebeb;
  padding: 13px;
  margin-bottom: 30px;
  border-radius: 25px;
  position: relative;
  box-shadow: 20px 20px 30px rgba(0, 0, 0, 0.02);
  transition: box-shadow 0.2s;
}
.product-section .product-cart:hover {
  box-shadow: 20px 20px 30px rgba(0, 0, 0, 0.06);
}
.product-section .product-cart img {
  width: 100%;
  border-radius: 25px;
}
.product-section .product-cart span {
  color: #969696;
  font-weight: 500;
  line-height: 30px;
}
.product-section .product-cart h4 {
  font-size: 18px;
  color: rgb(41, 41, 41);
}
.product-section .product-cart .stars {
  color: #e6ae2c;
  padding: 6px 0;
}
.product-section .product-cart .price {
  color: #088178;
  padding: 4px 0;
}
.product-section .product-cart .buy-icon {
  color: #088178;
  background-color: #ff8c00;
  padding: 15px;
  border-radius: 50px;
  position: absolute;
  right: 10px;
  bottom: 10px;
}
/* footer section styles */

#footer{
  display: flex;
  align-items:flex-start;
  justify-content: space-between;
  padding: 75px;
  background-color: #ff8c00;
}
#footer div{
}
#footer p, #footer a{
  color: rgb(109, 109, 109);
  text-decoration: none;
}
#footer a:hover{
  color:#088178;
}
#footer .about a{
  display: block;
  padding:8px 0;
}
#footer .myaccount a{
  display: block;
  padding:8px 0;
}
#footer .download img{
  border: 1px solid #08817969;
  border-radius: 7px;
}

</style>
