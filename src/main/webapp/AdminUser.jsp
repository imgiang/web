<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="http://localhost:8080/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="http://localhost:8080/assets/css/now-ui-dashboard.css" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="http://localhost:8080/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="user-profile">
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
                <li >
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

                <li class="active ">
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
                    <a class="navbar-brand" href="#pablo"><h3>Admin <b>Profile</b></h3></a>
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
        <div class="panel-header panel-header-sm">
        </div>
        <div class="content" >
            <div class="row">
                <div class="col-md-8" >
                    <div class="card" style="background-color: #f1c827;">
                        <div class="card-header">
                            <h5 class="title">Edit Profile</h5>
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="row">
                                    <div class="col-md-5 pr-1">
                                        <div class="form-group">
                                            <h7>Company (disabled)</h7>
                                            <input type="text" class="form-control" disabled="" placeholder="Company" value="Creative Code Inc.">
                                        </div>
                                    </div>
                                    <div class="col-md-3 px-1">
                                        <div class="form-group">
                                            <h7>Username</h7>
                                            <input type="text" class="form-control" placeholder="Username" value="michael23" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                    <div class="col-md-4 pl-1">
                                        <div class="form-group">
                                            <h7 for="exampleInputEmail1">Email address</h7>
                                            <input type="email" class="form-control" placeholder="Email" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 pr-1">
                                        <div class="form-group">
                                            <h7>First Name</h7>
                                            <input type="text" class="form-control" placeholder="Company" value="Mike" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                    <div class="col-md-6 pl-1">
                                        <div class="form-group">
                                            <h7>Last Name</h7>
                                            <input type="text" class="form-control" placeholder="Last Name" value="Andrew" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <h7>Address</h7>
                                            <input type="text" class="form-control" placeholder="Home Address" value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 pr-1">
                                        <div class="form-group">
                                            <h7>City</h7>
                                            <input type="text" class="form-control" placeholder="City" value="Mike" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                    <div class="col-md-4 px-1">
                                        <div class="form-group">
                                            <h7>Country</h7>
                                            <input type="text" class="form-control" placeholder="Country" value="Andrew" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                    <div class="col-md-4 pl-1">
                                        <div class="form-group">
                                            <h7>Postal Code</h7>
                                            <input type="number" class="form-control" placeholder="ZIP Code" style="background-color: #e5e3e3;">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <h7>About Me</h7>
                                            <textarea rows="4" cols="80" class="form-control" placeholder="Here can be your description" value="Mike" style="background-color: #e5e3e3;">Lamborghini Mercy, Your chick she so thirsty, I'm in that two seat Lambo.</textarea>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-user" style="background-color: #d9d958">
                        <div class="image">
                            <img src="https://1.bp.blogspot.com/-v1cUEuJCeBk/VvAQaxf4dqI/AAAAAAAAAaY/HFvg7gPPxRYN_Po57dEIBJFOYPicFKBzQ/s1600/hinh-nen-may-tinh-dep-nhat-04.jpg" style="width:500px;" alt="...">
                        </div>
                        <div class="card-body">
                            <div class="author">
                                <a href="#">
                                    <img class="avatar border-gray" src="https://i.pinimg.com/564x/7c/9c/81/7c9c81909313878a5c7a9b80778499c7.jpg" style="width:120px;" alt="...">
                                    <h5 class="title">Mike Andrew</h5>
                                </a>
                                <p class="description">
                                    michael24
                                </p>
                            </div>
                            <p class="description text-center">
                                "Lamborghini Mercy <br>
                                Your chick she so thirsty <br>
                                I'm in that two seat Lambo"
                            </p>
                        </div>
                        <hr>
                        <div class="button-container">
                            <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                                <i class="fab fa-facebook-f"></i>
                            </button>
                            <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                                <i class="fab fa-twitter"></i>
                            </button>
                            <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                                <i class="fab fa-google-plus-g"></i>
                            </button>
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
</body>

</html>