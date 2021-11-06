<%-- 
    Document   : Home
    Created on : Jul 18, 2021, 4:08:12 PM
    Author     : pc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.84.0">
        <title>Album example · Bootstrap v5.0</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">



        <!-- Bootstrap core CSS -->
        <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>


    </head>
    <body>

        <jsp:include page="Banner.jsp"></jsp:include>

            <main>

                <section class="py-5 text-center container">
                    <div class="row py-lg-5">
                        <div class="col-lg-6 col-md-8 mx-auto">
                            <h1 class="fw-light">Chào mừng bạn tới mua sản phẩm</h1>
                            <p class="lead text-muted">Sản phẩm chính hãng - giá cả cạnh tranh - free ship toàn quốc</p>
                            <p>
                                <a href="#" class="btn btn-primary my-2">Best seller</a>
                                <a href="#" class="btn btn-secondary my-2">Favorite</a>
                            </p>
                        </div>
                    </div>
                </section>

                <div class="album py-5 bg-light">
                    <div class="container">
                        <div class="row">

                        <jsp:include page="MenuManager.jsp"/>
                        <div class="col-sm-8 row row-cols-1 row-cols-sm-2 row-cols-md-3">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">uID</th>
                                        <th scope="col">UserName</th>
                                        <th scope="col">PassWord</th>
                                        <th scope="col">Delete</th>
                                        <th scope="col">Update</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="o" items="${listA}">
                                        <tr>
                                            <td>
                                               ${o.uid}
                                            </td>
                                            <td>
                                                ${o.username}
                                            </td>
                                            <td>${o.password}</td>
                                            <td>
                                                <a href="deleteAccount?aid=${o.uid}">
                                                    <button type="button" class="btn btn-danger">Delete </button>
                                                </a>
                                               
                                            </td>
                                            <td>
                                                 <a href="updateAccount">
                                                    <button type="button" class="btn btn-primary">Update</button>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>


                        </div>
                    </div>

                </div>
            </div>

        </main>

        <footer class="text-muted py-5">
            <div class="container">
                <p class="float-end mb-1">
                    <a href="#">Back to top</a>
                </p>
                <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
                <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="../getting-started/introduction/">getting started guide</a>.</p>
            </div>
        </footer>


        <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


    </body>
</html>
