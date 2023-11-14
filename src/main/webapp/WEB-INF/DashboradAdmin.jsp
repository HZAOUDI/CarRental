<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Tableau de bord</title>
    
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

<body>
<div class="wrapper" style="min-height: 600px ;">

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
                            <a href="${pageContext.request.contextPath}/Dashboard" class="nav-link active">
                            <i class="fa-solid fa-table-columns"></i></i>      
                                <p>Tableau de bord </p>
                            </a>
                        </li>

                        
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/Manager2" class="nav-link">
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
                            <a href="${pageContext.request.contextPath}/ListReservation" class="nav-link" >
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

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Tableau de bord</h1>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                    <div class="col-lg-4 col-6">
                            <!-- small box -->
                            
                            <div class="small-box bg-info">
                                <div class="inner">

                                    <h3>  
                            <%=request.getAttribute("nbrClient")%>
      
                                     </h3>

                                                
                                    <p>Nombre de clients</p>
                                </div>
                                <a href="${pageContext.request.contextPath}/Client" class="small-box-footer">Plus d'info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-4 col-6">
                            <!-- small box -->
                            <div class="small-box bg-success">
                                <div class="inner">
                                    <h3>
                             <%=request.getAttribute("nbrManager")%>
                                     
                                    </h3>

                                    <p>Nombre de Managers</p>
                                </div>

                                <a href="${pageContext.request.contextPath}/Manager" class="small-box-footer">Plus d'info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-4 col-6">
                            <!-- small box -->
                            <div class="small-box bg-warning">
                                <div class="inner">
                                    <h3>
                                      <%=request.getAttribute("nbrVoiture")%>
                                    
                                    </h3>

                                    <p>Nombre de voitures</p>
                                </div>

                                <a href="${pageContext.request.contextPath}/Voiture"  class="small-box-footer">Plus d'info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                     
                    </div>
                
                    <div class="row">
                        <section class="col-lg connectedSortable">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">
                                    <i class="fa-solid fa-chart-simple"></i> Graphique des Réservations par mois 
                                    </h3>

                                </div>
                                 <div class="card-body">
                                    <div class="tab-content p-0">
                                         <div class="chart tab-pane active" id="revenue-chart" style="position: relative; ">
                                        <div>
    									<canvas id="chart"></canvas>
                                        </div>
                                        </div>
                                        
                                    </div>
                                </div>
                           
                             </div>
                            
                           
                          
                        </section>

                    </div>
                 </div>
             </section>
         </div>
      
    </div>
    <!-- ./wrapper -->
</body>

</html>
     <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var months = ${months};
        var counts = ${counts};

        var ctx = document.getElementById('chart').getContext('2d');
        var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: months,
                datasets: [{
                    label: 'Nombre de réservations confirmées',
                    data: counts,
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
            
                });
</script>
            