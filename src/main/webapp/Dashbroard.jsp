<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="http://localhost:8080/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="http://localhost:8080/assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        Now UI Dashboard by Creative Tim
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="http://localhost:8080/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="http://localhost:8080/assets/css/now-ui-dashboard.css" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="http://localhost:8080/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-color="orange">
        <!--
          Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
      -->
        <div class="logo">
            <a class="navbar-brand " style="color:#1c20de ;font-size:35px;font-family: Florence, cursive;margin-left: 65px;" href="home">LOVER</a>

        </div>
        <div class="sidebar-wrapper" id="sidebar-wrapper">
            <ul class="nav">
                <li class="active ">
                    <a href="./Dashbroard.jsp">
                        <i class="fas fa-chart-line"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="managerProduct">
                        <i class="fab fa-react"></i>
                        <p>Manager Product</p>
                    </a>
                </li>
                <li>
                    <a href="managerCustomer">
                        <i class="fas fa-layer-group"></i>
                        <p>Manager Cutomer</p>
                    </a>
                </li>
                <li>
                    <a href="./Maps.jsp">
                        <i class="fas fa-map-marker-alt"></i>
                        <p>Maps</p>
                    </a>
                </li>

                <li>
                    <a href="./AdminUser.jsp">
                        <i class="fas fa-user-tie"></i>
                        <p>Admin Profile</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>
    <div class="main-panel" id="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <div class="navbar-toggle">
                        <button type="button" class="navbar-toggler">
                            <span class="navbar-toggler-bar bar1"></span>
                            <span class="navbar-toggler-bar bar2"></span>
                            <span class="navbar-toggler-bar bar3"></span>
                        </button>
                    </div>
                    <a class="navbar-brand" href="#pablo"><h3><b>Dashboard</b></h3></a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <form>
                        <div class="input-group no-border">
                            <input type="text" value="" class="form-control" placeholder="Search...">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <i class="fas fa-search"></i>
                                </div>
                            </div>
                        </div>
                    </form>
                    <ul class="navbar-nav">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="https://cdn-icons.flaticon.com/png/512/1144/premium/1144709.png?token=exp=1637085657~hmac=ff37bac0ca8dccb5aeecb6aba6ee57da" style="width:35px;" alt="">                                <p>
                                    <span class="d-lg-none d-md-block">Some Actions</span>
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="panel-header panel-header-lg">
            <canvas id="bigDashboardChart"></canvas>
        </div>
        <div class="content">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card card-chart">
                        <div class="card-header">
                            <h5 class="card-category">Global Sales</h5>
                            <h4 class="card-title">Shipped Products</h4>
                            <div class="dropdown">
                                <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                                    <i class="fas fa-shipping-fast"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <a class="dropdown-item text-danger" href="#">Remove Data</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="chart-area">
                                <canvas id="lineChartExample"></canvas>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="fas fa-history"></i> Just Updated
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="card card-chart">
                        <div class="card-header">
                            <h5 class="card-category">2021 Sales</h5>
                            <h4 class="card-title">All products</h4>
                            <div class="dropdown">
                                <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                                    <i class="fas fa-stream"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <a class="dropdown-item text-danger" href="#">Remove Data</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="chart-area">
                                <canvas id="lineChartExampleWithNumbersAndGrid"></canvas>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="fas fa-history"></i> Just Updated
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="card card-chart">
                        <div class="card-header">
                            <h5 class="card-category">Email Statistics</h5>
                            <h4 class="card-title">24 Hours Performance</h4>
                        </div>
                        <div class="card-body">
                            <div class="chart-area">
                                <canvas id="barChartSimpleGradientsNumbers"></canvas>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="fas fa-clock"></i> Last 7 days
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card  card-tasks">
                        <div class="card-header ">
                            <h5 class="card-category">Backend development</h5>
                            <h4 class="card-title">Tasks</h4>
                        </div>
                        <div class="card-body ">
                            <div class="table-full-width table-responsive">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" checked>
                                                    <span class="form-check-sign"></span>
                                                </label>
                                            </div>
                                        </td>
                                        <td class="text-left">Sign contract for "What are conference organizers afraid of?"</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task">
                                                <i class="fas fa-tools"></i>                                            </button>
                                            <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove">
                                                <i class="fas fa-minus-circle"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox">
                                                    <span class="form-check-sign"></span>
                                                </label>
                                            </div>
                                        </td>
                                        <td class="text-left">Lines From Great Russian Literature? Or E-mails From My Boss?</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task">
                                                <i class="fas fa-tools"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove">
                                                <i class="fas fa-minus-circle"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" checked>
                                                    <span class="form-check-sign"></span>
                                                </label>
                                            </div>
                                        </td>
                                        <td class="text-left">Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
                                        </td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task">
                                                <i class="fas fa-tools"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove">
                                                <i class="fas fa-minus-circle"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer ">
                            <div class="container">



                                <div class="spinner-grow spinner-grow-sm"></div>Updated 3 minutes ago
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-category">All Persons List</h5>
                            <h4 class="card-title"> Employees Stats</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class=" text-primary">
                                    <th>
                                        Name
                                    </th>
                                    <th>
                                        Country
                                    </th>
                                    <th>
                                        City
                                    </th>
                                    <th class="text-right">
                                        Salary
                                    </th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            Dakota Rice
                                        </td>
                                        <td>
                                            Niger
                                        </td>
                                        <td>
                                            Oud-Turnhout
                                        </td>
                                        <td class="text-right">
                                            $36,738
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Minerva Hooper
                                        </td>
                                        <td>
                                            Curaçao
                                        </td>
                                        <td>
                                            Sinaai-Waas
                                        </td>
                                        <td class="text-right">
                                            $23,789
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Sage Rodriguez
                                        </td>
                                        <td>
                                            Netherlands
                                        </td>
                                        <td>
                                            Baileux
                                        </td>
                                        <td class="text-right">
                                            $56,142
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Doris Greene
                                        </td>
                                        <td>
                                            Malawi
                                        </td>
                                        <td>
                                            Feldkirchen in Kärnten
                                        </td>
                                        <td class="text-right">
                                            $63,542
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Mason Porter
                                        </td>
                                        <td>
                                            Chile
                                        </td>
                                        <td>
                                            Gloucester
                                        </td>
                                        <td class="text-right">
                                            $78,615
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class=" container-fluid ">
                <nav>
                    <ul>
                        <li>
                            <a href="https://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://presentation.creative-tim.com">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                                Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright" id="copyright">
                    &copy; <script>
                    document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
                </script>, Designed by <b>H&T&G TEAMS</b>
                </div>
            </div>
        </footer>
    </div>
</div>
<!--   Core JS Files   -->
<script src="http://localhost:8080/assets/js/core/jquery.min.js"></script>
<script src="http://localhost:8080/assets/js/core/popper.min.js"></script>
<script src="http://localhost:8080/assets/js/core/bootstrap.min.js"></script>
<script src="http://localhost:8080/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chart JS -->
<script src="http://localhost:8080/assets/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="http://localhost:8080/assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script src="http://localhost:8080/assets/js/now-ui-dashboard.min.js" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
<script src="http://localhost:8080/assets/demo/demo.js"></script>
<script>
    $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

    });
</script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>
