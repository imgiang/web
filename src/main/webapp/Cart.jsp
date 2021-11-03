<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <!--Favicon-->--%>
<%--    <link rel="icon" type="image/png" href="image/faviconLogo.png" />--%>
<%--    <title>Fresh fruit</title>--%>
<%--    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
<%--    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<%--    <!------ Include the above in your HEAD tag ---------->--%>
<%--    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">--%>
<%--    <link href="css/style.css" rel="stylesheet" type="text/css"/>--%>
<%--    <style>--%>
<%--        .container table img{--%>
<%--            height: 100px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="menu.jsp"></jsp:include>--%>
<%--<h1 style="text-align: center">CART</h1>--%>
<%--<div class="container">--%>
<%--    <div id="print">--%>
<%--        <table class="table table-striped">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th scope="col">ID</th>--%>
<%--                <th scope="col">Name</th>--%>
<%--                <th scope="col">Image</th>--%>
<%--                <th scope="col">Price</th>--%>
<%--                <th scope="col">Amount</th>--%>
<%--                <th scope="col">Action</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <c:forEach items="${list}" var="o">--%>
<%--                <tr>--%>
<%--                    <th scope="row">${o.p.id}</th>--%>
<%--                    <td>${o.p.name}</td>--%>
<%--                    <td><img src="${o.p.imageLink}"></td>--%>
<%--                    <td>${o.p.priceWithDot} VND</td>--%>
<%--                    <td>${o.amount}</td>--%>
<%--                    <td><a href="deleteProductInCart?ProductID=${o.p.id}" type="button" class="btn btn-outline-info">Delete</a></td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--            </tbody>--%>
<%--        </table>--%>
<%--        <div class="btn-group" role="group" aria-label="Basic outlined example">--%>
<%--            <button type="button" class="btn btn-warning">Total</button>--%>
<%--            <button type="button" class="btn btn-outline-primary">${total} VND</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div>&emsp;</div>--%>
<%--    <div><a type="button" href="buy" class="btn btn-info btn-lg">Thanh Toán</a></div>--%>
<%--    <button onclick="inHoaDon()" style="margin-top: 20px" class="btn btn-info btn-lg">In hóa đơn</button>--%>
<%--    <a type="button" href="deleteCart" class="btn btn-danger" style="float: right">Delete Cart</a>--%>
<%--    <div>&emsp;</div><div>&emsp;</div><div>&emsp;</div>--%>
<%--</div>--%>
<%--<script>--%>
<%--    function inHoaDon() {--%>

<%--        window.print();--%>

<%--    }--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>

<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="shopping-cart">
    <div class="px-4 px-lg-0">

        <div class="pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                        <!-- Shopping cart table -->
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Đơn Giá</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Số Lượng</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Xóa</div>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="o" items="${listP}">
                                    <tr>
                                        <th scope="row">
                                            <div class="p-2">
                                                <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                <div class="ml-3 d-inline-block align-middle">
                                                    <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                </div>
                                            </div>
                                        </th>
                                        <td class="align-middle"><strong>${o.price}</strong></td>
                                            <%--                                        <td class="align-middle">--%>
                                            <%--                                            <a href="sub?id=${o.id}"><button class="btnSub">-</button></a> <strong>${o.amount}</strong>--%>
                                            <%--                                            <a href="cart?id=${o.id}"><button class="btnAdd">+</button></a>--%>
                                            <%--                                        </td>--%>
                                        <td><input class="form-control" type="text" value="${o.amount}" /></td>
                                        <td class="align-middle"><a href="removeCart?pid=${o.id}" class="text-dark">
                                            <button type="button" class="btn btn-danger">Delete</button>
                                        </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <!-- End -->
                    </div>
                </div>

                <div class="row py-5 p-4 bg-white rounded shadow-sm">
                    <div class="col-lg-6">
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                        <div class="p-4">
                            <div class="input-group mb-4 border rounded-pill p-2">
                                <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                <div class="input-group-append border-0">
                                    <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                        <div class="p-4">
                            <ul class="list-unstyled mb-4">
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>${total}</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${vat}</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                    <h5 class="font-weight-bold">${sum} ₫</h5>
                                </li>
                            </ul><a href="order" class="btn btn-dark rounded-pill py-2 btn-block">Mua hàng</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>
</html>
