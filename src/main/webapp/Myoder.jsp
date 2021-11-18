
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--Favicon-->
    <link rel="icon" type="image/png" href="image/faviconLogo.png" />
    <title>ShopH&T&G</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="http://localhost:8080/assets/css/order.css" rel="stylesheet" />
    <link href="http://localhost:8080/assets/css/ordedown.css" rel="stylesheet"/>
    <style>
        body{
            background-image: url("https://www.mechatronicsart.com/wp-content/uploads/2016/06/Vilarpac_website_background.jpg");
            background-attachment: fixed;
        }
    </style>
</head>

<body>
<header>
    <jsp:include page="menu.jsp"></jsp:include>
</header>
<main>
    <div class="card card-timeline px-2 border-none" style="background-color: #98aec2">
        <ul class="bs4-order-tracking">
            <li class="step active">
                <div><i class='fa fa-address-card-o'></i></div> Order Placed
            </li>
            <li class="step active">
                <div><i class='fa fa-cloud-upload'></i></div> In transit
            </li>
            <li class="step">
                <div><i class="fas fa-shipping-fast"></i></div> Out for delivery
            </li>
            <li class="step ">
                <div><i class='fa fa-birthday-cake'></i></div> Delivered
            </li>
        </ul>
        <h5 class="text-center"><b>In transit</b>. The order has been shipped!</h5>
    </div>
    <div class="d-flex flex-column justify-content-center align-items-center" id="order-heading" style="background-color: #ee6a0b">
        <div class="text-uppercase">
            <h3 style="color:black">Order detail</h3>
        </div>
        <div class="">
            <h4> Saturday, November 20, 2021</h4>
           </div>
        <div class="pt-1">
            <p style="color:black">Order #12615 is currently<b class="text-dark"> processing</b></p>
        </div>
        <div class="btn close text-white"> &times; </div>
    </div>

    <div class="wrapper bg-white">
        <div class="table-responsive">
            <table class="table table-borderless" >
                <thead>
                <tr class="text-uppercase text-muted">
                    <th scope="col">product</th>
                    <th scope="col" class="text-right">total</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Babyblends: 1meal/day</th>
                    <td class="text-right"><b>$${total}</b></td>
                </tr>
                </tbody>
            </table>
        </div>
        <c:forEach items="${listP}" var="o">
            <div class="d-flex justify-content-start align-items-center list py-1">

                <div class="mx-3"> <img src="${o.image}" alt="apple" class="rounded-circle" width="30" height="30"> </div>
                <div class="order-item">${o.name}</div>
            </div>
        </c:forEach>
        <div class="pt-2 border-bottom mb-3"></div>
        <div class="d-flex justify-content-start align-items-center pl-3">
            <div class="text-muted">Payment Method</div>
            <div class="ml-auto"> <img src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png" alt="" width="30" height="30"> <label>Mastercard ******5342</label> </div>
        </div>
        <div class="d-flex justify-content-start align-items-center py-1 pl-3">
            <div class="text-muted">Shipping</div>
            <div class="ml-auto"> $${vat} </div>
        </div>
        <div class="d-flex justify-content-start align-items-center pb-4 pl-3 border-bottom">
            <div class="text-muted"> <button class="text-white btn">Tổng thanh toán</button> </div>
            <div class="ml-auto price"> ${sum} </div>
        </div>
        <div class="d-flex justify-content-start align-items-center pl-3 py-3 mb-4 border-bottom">
            <div class="text-muted"> Today's Total </div>
            <div class="ml-auto h5"> $${sum} </div>
        </div>

        <c:forEach items="${listC}" var="o">
            <div class="row border rounded p-1 my-3">
                <div class="col-md-6 py-3">
                    <div class="d-flex flex-column align-items start"> <b>Billing Address</b>
                        <p class="text-justify pt-2">${o.name}</p>
                        <p class="text-justify">${o.diachi}</p>
                    </div>
                </div>

            </div>
        </c:forEach>
        <div class="pl-3 font-weight-bold">Related Subsriptions</div>
        <div class="d-sm-flex justify-content-between rounded my-3 subscriptions">
            <div> <b>#9632</b> </div>
            <div>November 20, 2021</div>
            <div>Status: Processing</div>
            <div> Total: <b> $${sum}</b> </div>
        </div>
    </div>
</main>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>

</footer>
</body>
</html>