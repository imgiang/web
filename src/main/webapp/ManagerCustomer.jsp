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
                <li class="active ">
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
                    <a class="navbar-brand" href="#pablo"><h3>Manager <b>Customer</b></h3></a>
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
        <div class="content">

            <div class="album py-5 bg-light">
                <div class="container">
                    <div class="row">

                        <%--                <jsp:include page="MenuManager.jsp"/>--%>

                            <table class="table table-striped">

                                <tr>

                                    <th >Tên</th>
                                    <th >Giới tính</th>
                                    <th >Địa chỉ</th>
                                    <th>Điện Thoại</th>
                                    <th >email</th>
                                    <th >cmnd</th>


                                </tr>

                                <tbody>
                                <c:forEach var="o" items="${listA}">
                                    <tr>


                                        <td>
                                                ${o.name}
                                        </td>
                                        <td>
                                                ${o.gioitinh}
                                        </td>
                                        <td>${o.diachi}</td>
                                        <td>${o.dienthoai}</td>
                                        <td>${o.email}</td>
                                        <td>${o.cmnd}</td>



                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>



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

