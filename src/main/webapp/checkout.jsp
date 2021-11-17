
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi" class="h-100">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Clothes</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css" type="text/css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Custom css - Các file css do chúng ta tự viết -->
    <link rel="stylesheet" href="../assets/css/app.css" type="text/css">
    <link rel="stylesheet" href="../css/app.css" type="text/css">
    <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="/your-path-to-fontawesome/css/fontawesome.css" rel="stylesheet">
    <link href="/your-path-to-fontawesome/css/brands.css" rel="stylesheet">
    <link href="/your-path-to-fontawesome/css/solid.css" rel="stylesheet">



    <%--    giang--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link type="text/css" rel="stylesheet" href="https://www.gstatic.com/firebasejs/ui/4.8.1/firebase-ui-auth.css" />

    <%--    giang--%>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
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
    <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
    <div class="container mt-4" style="background-color: #c9c4c2;width: 750px;">
        <form class="needs-validation" name="frmthanhtoan" method="post"
              action="checkout">
            <input type="hidden" name="kh_tendangnhap" value="dnpcuong">

            <div class="py-5 text-center">
                <i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
                <h2>Thanh toán</h2>
                <p class="lead">Vui lòng kiểm tra thông tin Khách hàng, thông tin Giỏ hàng trước khi Đặt hàng.</p>
            </div>


            <div class="">
                <h4 class="mb-3">Thông tin khách hàng</h4>

                <div class="row">
                    <div class="col-md-12">
                        <label for="kh_ten">Họ tên</label>
                        <input name="name" type="text"  id="kh_ten" class="form-control" placeholder="VD: Nguyễn Thành Công"
                               required="" autofocus="">
                        <%--                            <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">--%>
                    </div>
                    <div class="col-md-12">
                        <label for="kh_gioitinh">Giới tính</label>
                        <input  name="gioitinh" type="text" id="kh_gioitinh" class="form-control" placeholder="VD:Nam"
                                required="" autofocus="">

                    </div>
                    <div class="col-md-12">
                        <label for="kh_diachi">Địa chỉ</label>
                        <input name="diachi" type="text" id="kh_diachi" class="form-control" placeholder="VD:130 Xô Viết Nghệ Tỉnh"
                               required="" autofocus="">
                    </div>
                    <div class="col-md-12">
                        <label for="kh_dienthoai">Điện thoại</label>
                        <input name="dienthoai" type="text" id="kh_dienthoai" class="form-control" placeholder="VD:0915659223"
                               required="" autofocus="">
                    </div>
                    <div class="col-md-12">
                        <label for="kh_email">Email</label>
                        <input name="email" type="text" id="kh_email" class="form-control" placeholder="VD:phucuong@ctu.edu.vn"
                               required="" autofocus="">
                    </div>
                    <%--                        <div class="col-md-12">--%>
                    <%--                            <label for="kh_ngaysinh">Ngày sinh</label>--%>
                    <%--                            <input name="kh_ngaysinh" type="text" id="kh_ngaysinh" class="form-control" placeholder="VD:09-05-1999"--%>
                    <%--                                   required="" autofocus="">--%>
                    <%--                        </div>--%>
                    <div class="col-md-12">
                        <label for="kh_cmnd">CMND</label>
                        <input name="cmnd" type="text" id="kh_cmnd" class="form-control" placeholder="VD:362209685"
                               required="" autofocus="">
                    </div>
                </div>

                <h4 class="mb-3">Hình thức thanh toán</h4>

                <div class="d-block my-3">
                    <div class="custom-control custom-radio">
                        <input id="httt-1" name="httt_ma" type="radio" class="custom-control-input" required=""
                               value="1">
                        <label class="custom-control-label"  >   Tiền mặt</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="httt-2" name="httt_ma" type="radio" class="custom-control-input" required=""
                               value="2">
                        <label class="custom-control-label" for="httt-2">   Chuyển khoản</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="httt-3" name="httt_ma" type="radio" class="custom-control-input" required=""
                               value="3">
                        <label class="custom-control-label" for="httt-3">   Ship COD</label>
                    </div>
                </div>
                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit" name="btnDatHang" style="margin-bottom: 10px;">Đặt hàng</button>
            </div>

        </form>
    </div>


    <!-- End block content -->
</main>



<footer class="page-footer text-center font-small mt-4 wow fadeIn" style="background-color: #096363">
    <jsp:include page="footer.jsp"></jsp:include>

</footer>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/popperjs/popper.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Custom script - Các file js do mình tự viết -->
<script src="../assets/js/app.js"></script>
<script type="text/javascript" src="node_modules/mdbootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="node_modules/mdbootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="node_modules/mdbootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="node_modules/mdbootstrap/js/mdb.min.js"></script>


</body>

</html>


