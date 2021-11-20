<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>


    <meta charset="ISO-8859-1"/>
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

<body>

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
                <li class="active ">
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
                    <a class="navbar-brand" href="#pablo"><h3>Manager <b>Product</b></h3></a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <form action="managersearch" method="get">
                        <div class="input-group no-border">
                            <input type="text" class="form-control" value="${txtM}" name="txtm" placeholder="Search...">
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
            <div class="container-xl" style="margin-left:30px;">
                <div class="table-responsive">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">

                                <div class="col-sm-6">
                                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="fas fa-plus-circle"></i><span>Add New Product</span></a>
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Edit</th>
                                <th>Delete</th>

                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${listP}" var="o">
                                <tr>
                                    <td>${o.id}</td>
                                    <td>${o.name}</td>
                                    <td><img src="${o.image}" style="height: 100px"></td>
                                    <td>$${o.price} </td>
                                    <td>
                                        <!--Link to GET in EditControl-->
                                        <a href="loadProduct?id=${o.id}" class="edit"><i class="fas fa-pencil-alt"></i></a>
                                    </td>
                                    <th>
                                        <a href="#deleteEmployeeModal" onclick="ProductID2(${o.id})" class="delete" data-toggle="modal"><i class="far fa-trash-alt"></i></a>

                                    </th>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                        <div class="clearfix">
                            <div class="hint-text">Showing <b>6</b> out of <b>${count}</b> entries</div>
                            <ul class="pagination">
                                <c:forEach begin="1" end="${end}" var="i">
                                    <li class="page-item ${tag == i?"active":""}"><a href="manager?index=${i}" class="page-link">${i}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Add Product -->
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="add" method="post">
                            <div class="modal-header">
                                <h4 class="modal-title">Add Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" required name="name">
                                </div>
                                <div class="form-group">
                                    <label>Title </label>
                                    <input type="text" class="form-control" required name="Title">
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <input type="text" class="form-control" required name="description">
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" class="form-control" required name="price">
                                </div>
                                <div class="form-group">
                                    <label>Image </label>
                                    <input type="text" class="form-control" required name="image">
                                </div>
                                <div class="form-group">
                                    <label>Size </label>
                                    <input type="text" class="form-control" required name="size">
                                </div>
                                <%--                    <div class="form-group">--%>
                                <%--                        <label>Category</label>--%>
                                <%--                        <select name="CategoryID" class="form-control" required>--%>
                                <%--                            <c:forEach var="o" items="${listC}">--%>
                                <%--                                <option value="${o.id}">${o.name}</option>--%>
                                <%--                            </c:forEach>--%>
                                <%--                        </select>--%>
                                <%--                    </div>--%>
                                <%--                    <div class="form-group">--%>
                                <%--                        <label>Seller</label>--%>
                                <%--                        <select name="SellerID" class="form-control" required>--%>
                                <%--                            <c:forEach var="o" items="${listS}">--%>
                                <%--                                <option value="${o.id}">${o.user}</option>--%>
                                <%--                            </c:forEach>--%>
                                <%--                        </select>--%>
                                <%--                    </div>--%>
                                <div class="form-group">
                                    <label>CateID</label>
                                    <select name="cateID" class="form-control form-control-sm" style="width:70px;">
                                        <option> 1 </option>
                                        <option> 2 </option>
                                        <option> 3 </option>
                                        <option> 4 </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>SellID </label>
                                    <select name="sell_ID" class="form-control " style="width:70px;">
                                        <option> 1 </option>
                                        <option> 2 </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Amount</label>
                                    <input type="text" class="form-control" required name="amount">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-success" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Delete Product -->
            <div id="deleteEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="delete" method="post">
                            <div class="modal-header">
                                <h4 class="modal-title">Delete Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <p>Are you sure you want to delete this Product?</p>
                            </div>
                            <div class="modal-footer">
                                <input type="text" id="pid2" name="ProductID" visibility: hidden>
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-danger" value="Delete">
                            </div>
                        </form>
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
    function ProductID(PID) {
        document.getElementById("pid").setAttribute("value", PID);
    }
    function ProductID2(PID) {
        document.getElementById("pid2").setAttribute("value", PID);
    }
    function search() {
        var searchText = document.getElementById("search_Manager").value;
        location.href = "searchInManager?text=" + searchText;
        return false;
    }
</script>
</body>

</html>
