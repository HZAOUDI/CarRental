<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modification du mot de passe</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-pzjw8O+uaZwUW5LSaPDIjt+2FYvE0KF5Zxugx6Dk/iQpL/5xU6p8r6gX7IfY3I2w"
          crossorigin="anonymous">
      <%@include file="includes/navBar.jsp" %>
     
</head>
<br/><br/><br/><br/><br/><br/>
<body>
  
        
        
        <%-- Afficher le message ou l'erreur si nécessaire --%>
       
        
   <!--      <form action="/LocationVoiture/Update" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="currentPassword">Mot de passe actuel:</label>
                <input type="password" class="form-control" id="currentPassword" name="currentPassword" required>
            </div>
            
            <div class="form-group">
                <label for="newPassword">Nouveau mot de passe:</label>
                <input type="password" class="form-control" id="newPassword" name="newPassword" required>
            </div>
            
            <button type="submit" class="btn btn-primary">Mettre à jour</button>
        </form>
    </div> -->
    
   
   
   
   
    <div class="container">
    <div class="box">
        <div class="box-login" id="login">

            <div class="top-header">
                <h3>Update Password</h3>
                 <% if (request.getAttribute("message") != null) { %>
           <small>  <p class="alert alert-success"><%= request.getAttribute("message") %></p> </small>
        <% } else if (request.getAttribute("errorMessage") != null) { %>
            <small> <p class="alert alert-danger"><%= request.getAttribute("errorMessage") %></p> </small>
        <% } %>
            </div>
            <div class="input-group">
                <div class="input-field">
                <form action="/LocationVoiture/Update" method="post">
                     <input type="email" class="input-box" id="email" name="email" required>
                    <label for="logEmail">Email address</label>
                </div>
                <div class="input-field">
                    <input type="password" class="input-box" id="currentPassword" name="currentPassword" required>
                    <label for="logPassword">Password</label>
                     <div class="eye-area">
                            <div class="eye-box" onclick="myLogPassword()">
                                <i class="fa-regular fa-eye" id="eye"></i>
                                <i class="fa-regular fa-eye-slash" id="eye-slash"></i>
                            </div>
                     </div>
                </div>
                <div class="input-field">
                     <input type="password" class="input-box" id="newPassword" name="newPassword" required>
                    <label for="logPassword">Password</label>
                     <div class="eye-area">
                            <div class="eye-box" onclick="myLogPassword()">
                                <i class="fa-regular fa-eye" id="eye"></i>
                                <i class="fa-regular fa-eye-slash" id="eye-slash"></i>
                            </div>
                     </div>
                </div>
                <div class="input-field">
                    <input type="submit" class="input-submit" value="Sign In">
                </div>
                
                </form>
            </div>

        </div>

     

   

    </div>
 </div>
  
   
   
</body>
</html>




<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;

}
body{
    background: url("images/cars/car9.jpg");
    
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
   
}
.container{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 70vh;
}
.box{
    display: flex;
    flex-direction: row;
    position: relative;
    padding: 60px 20px 30px 20px;
    height: 440px;
    width: 350px;
    background-color: rgba(255, 220, 220, 0.4);
    border-radius: 30px;
    -webkit-backdrop-filter: blur(15px);
    backdrop-filter: blur(15px);
    border: 3px solid rgba(255, 255, 255, 0.2);
    overflow: hidden;
}
.box-login{
    position: absolute;
    width: 85%;
    left: 27px;
    transition: .5s ease-in-out; 
}
.box-register{
    position: absolute;
    width: 85%;
    right: -350px;
    transition: .5s ease-in-out; 
}
.top-header{
    text-align: center;
    margin: 30px 0;
}
.top-header h3{
    font-size: 22px;
    font-weight: 600;
    margin-bottom: 8px
}
.input-group{
    width: 100%;
}
.input-field{
    margin: 12px 0;
    position: relative;
}
.input-box{
    width: 100%;
    height: 50px;
    font-size: 15px;
    color: #040404;
    border: none;
    border-radius: 10px;
    padding: 7px 45px 0 20px;
    background: rgba(224, 223, 223, 0.6);
    backdrop-filter: blur(2px);
    outline: none;
}
.input-field label{
    position: absolute;
    left: 20px;
    top: 15px;
    font-size: 15px;
    transition: .3s ease-in-out;
}
.input-box:focus ~ label,.input-box:valid ~ label{
    top: 2px;
    font-size: 10px;
    color: #c12828;
    font-weight: 500;
}
.eye-area{
    position: absolute;
    top: 25px;
    right: 25px;
}
.eye-box{
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}
i{
    position: absolute;
    color: #444444;
    cursor: pointer;
}
#eye,#eye-2{
    opacity: 1;
}
#eye-slash,#eye-slash-2{
    opacity: 0;
}
.remember{
    display: flex;
    font-size: 13px;
    margin: 12px 0 30px 0;
    color: #000;
}
.check{
    margin-right: 8px;
    width: 14px;
}
.input-submit{
    width: 100%;
    height: 50px;
    font-size: 15px;
    font-weight: 500;
    border: none;
    border-radius: 10px;
    background: #bc6202;
    color: #fff;
    box-shadow: 0px 4px 20px rgba(62, 9, 9, 0.145);
    cursor: pointer;
    transition: .4s;
}
.input-submit:hover{
    background: #db3e00;
    box-shadow: 0px 4px 20px rgba(62, 9, 9, 0.32);
}
.forgot{
    text-align: center;
    font-size: 13px;
    font: 500;
    margin-top: 40px;
}
.forgot a{
    text-decoration: none;
    color: #000;
}
.switch{
    display: flex;
    position: absolute;
    bottom: 50px;
    left: 25px;
    width: 85%;
    height: 50px;
    background: rgba(255, 255, 255, 0.16);
    backdrop-filter: blur(10px);
    border-radius: 10px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    overflow: hidden;
}
.switch a{
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 14px;
    font-weight: 500;
    color: #000;
    text-decoration: none;
    width: 50%;
    border-radius: 10px;
    z-index: 10;
}
#btn{
    position: absolute;
    bottom: 0;
    left: 0;
    width: 145px;
    height: 50px;
    background: #cccccd;
    border-radius: 10px;
    box-shadow: 2px 0px 12px rgba(0, 0, 0, 0.1);
    transition: .5s ease-in-out;
}
</style>

