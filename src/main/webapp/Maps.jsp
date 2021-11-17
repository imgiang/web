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
    <link href="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.css" rel="stylesheet">
    <script src="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.js"></script>

</head>

<body class="">
<style>
    .rounded-rect {
        background: white;
        border-radius: 10px;
        box-shadow: 0 0 50px -25px black;
    }

    .flex-center {
        position: absolute;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .flex-center.left {
        left: 0px;
    }

    .flex-center.right {
        right: 0px;
    }

    .sidebar-content {
        position: absolute;
        width: 95%;
        height: 95%;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 32px;
        color: gray;
    }

    .sidebar-toggle {
        position: absolute;
        width: 1.3em;
        height: 1.3em;
        overflow: visible;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .sidebar-toggle.left {
        right: -1.5em;
    }

    .sidebar-toggle.right {
        left: -1.5em;
    }

    .sidebar-toggle:hover {
        color: #0aa1cf;
        cursor: pointer;
    }

    .sidebar {
        transition: transform 1s;
        z-index: 1;
        width: 300px;
        height: 100%;
    }

    /*
  The sidebar styling has them "expanded" by default, we use CSS transforms to push them offscreen
  The toggleSidebar() function removes this class from the element in order to expand it.
  */
    .left.collapsed {
        transform: translateX(-295px);
    }

    .right.collapsed {
        transform: translateX(295px);
    }
</style>
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
                <li >
                    <a href="managerCustomer">
                        <i class="fas fa-layer-group"></i>
                        <p>Manager Cutomer</p>
                    </a>
                </li>
                <li class="active ">
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
                    <a class="navbar-brand" href="#pablo"><h3> <b>   Maps</b></h3></a>
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
        <div class="content" style="margin-left: 20px;margin-right: 40px;">

            <div id="map" style='width: 3500px; height: 800px;'>


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
    mapboxgl.accessToken = 'pk.eyJ1IjoidGh1aHVvbmcwMDEiLCJhIjoiY2t0bjZnMHR0MGk1ajJwcGwwazN2eXV6biJ9.wgJUHMtIs42f5pVD-vxJUA';
    const center = [-77.01866, 38.888];
    const map = new mapboxgl.Map({
        container: 'map',
        zoom: 12.5,
        center: center,
        pitch: 60,
        style: 'mapbox://styles/mapbox/streets-v11'
    });

    new mapboxgl.Marker().setLngLat(center).addTo(map);

    function toggleSidebar(id) {
        const elem = document.getElementById(id);
        // Add or remove the 'collapsed' CSS class from the sidebar element.
        // Returns boolean "true" or "false" whether 'collapsed' is in the class list.
        const collapsed = elem.classList.toggle('collapsed');
        const padding = {};
        // 'id' is 'right' or 'left'. When run at start, this object looks like: '{left: 300}';
        padding[id] = collapsed ? 0 : 300; // 0 if collapsed, 300 px if not. This matches the width of the sidebars in the .sidebar CSS class.
        // Use `map.easeTo()` with a padding option to adjust the map's center accounting for the position of sidebars.
        map.easeTo({
            padding: padding,
            duration: 1000 // In ms. This matches the CSS transition duration property.
        });
    }

    map.on('load', () => {
        toggleSidebar('left');
    });
</script>
</body>

</html>
