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
    <title>Manager </title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="CSS/css.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ebb1c2c13f.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


</head>
</head>
<body>

<header>

</header>
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="" class="brand-link">
            <h4 class="brand-text font-weight-light  text-center "></h4>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">

                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">


                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/Dashboard" class="nav-link ">
                            <i class="fa-solid fa-table-columns"></i></i>      
                                <p>Tableau de bord </p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/Manager2" class="nav-link active" >
                            <i class="fa-solid fa-clipboard-check"></i>
                            
                                <p>
                                    Gestion des Managers
                                </p>
                            </a>
                        </li>
                        
                       
                         <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/Admin" class="nav-link " >
						<i class="fa-solid fa-user-tie" ></i> 
                                     <p>
                                    Gestion des admins
                                </p>
                            </a>
                        </li>
                          <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/ListReservation" class="nav-link " >
			<i class="fa-solid fa-car" ></i>                                       <p>
                                    Réservations
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="LogoutAdmin" class="nav-link">
                            <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                <p>
                                    Deconnexion
                                </p>
                            </a>
                        </li>


                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

<div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-12">
                            <h1 class="m-0 text-dark">Gestion des Managers</h1>
          

        <hr>
        <div class="container text-left">
        
            <a href="${pageContext.request.contextPath}/Manager2/Form" class="btn btn-success">Ajouter un manager</a>

        </div>
        <br>
                <%
List<Document> listManager = (List<Document>) request.getAttribute("listManager");
%>
        
            
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Num Manager</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>CIN</th>
                <th>Email</th>
                <th>Adresse</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
           <%-- Loop through the listManager and display each document --%>
            <% for (Document manager : listManager) { %>
                <tr>
                  <td><%= manager.get("N_manager") %></td>
                  <td><%= manager.get("Nom") %></td>
                  <td><%= manager.get("Prenom") %></td>
                  <td><%= manager.get("CIN") %></td>
                  <td><%= manager.get("Login") %></td>
                  <td><%= manager.get("adress") %></td>
                  <%String action = request.getServletPath(); %>
                  
                  <td><a href="${pageContext.request.contextPath}/Manager2/UpdateManager?id=<%= manager.get("N_manager") %>">Edit</a>
	&nbsp;&nbsp;&nbsp;&nbsp; 
                  <td><a href="${pageContext.request.contextPath}/Manager2/delete?id=<%= manager.get("N_manager") %>">Delete</a>

                    <!-- Access other properties of the manager document -->
                </tr>
            <% } %>
        </tbody>
    </table>
                  </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</body>
</html>
