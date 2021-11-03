<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
<%--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<%--<!------ Include the above in your HEAD tag ---------->--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">--%>
<%--    <link href="css/login.css" rel="stylesheet" type="text/css"/>--%>
<%--    <title>Login Form</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div id="logreg-forms">--%>
<%--   --%>

<%--    <form action="checkout" method="post" class="form-signup">--%>
<%--        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>--%>
<%--        <div class="col-md-12">--%>
<%--            <label for="ten">Họ tên</label>--%>
<%--            <input name="ten" type="text"  id="ten" class="form-control" placeholder="VD: Nguyễn Thành Công"--%>
<%--                   required="" autofocus="">--%>
<%--            &lt;%&ndash;                            <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">&ndash;%&gt;--%>
<%--        </div>--%>
<%--        <div class="col-md-12">--%>
<%--            <label for="gioitinh">Giới tính</label>--%>
<%--            <input  name="gioitinh" type="text" id="gioitinh" class="form-control" placeholder="VD:Nam"--%>
<%--                    required="" autofocus="">--%>

<%--        </div>--%>
<%--        <div class="col-md-12">--%>
<%--            <label for="diachi">Địa chỉ</label>--%>
<%--            <input name="diachi" type="text" id="diachi" class="form-control" placeholder="VD:130 Xô Viết Nghệ Tỉnh"--%>
<%--                   required="" autofocus="">--%>
<%--        </div>--%>
<%--        <div class="col-md-12">--%>
<%--            <label for="dienthoai">Điện thoại</label>--%>
<%--            <input name="dienthoai" type="text" id="dienthoai" class="form-control" placeholder="VD:0915659223"--%>
<%--                   required="" autofocus="">--%>
<%--        </div>--%>
<%--        <div class="col-md-12">--%>
<%--            <label for="email">Email</label>--%>
<%--            <input name="email" type="text" id="email" class="form-control" placeholder="VD:phucuong@ctu.edu.vn"--%>
<%--                   required="" autofocus="">--%>
<%--        </div>--%>
<%--        &lt;%&ndash;                        <div class="col-md-12">&ndash;%&gt;--%>
<%--        &lt;%&ndash;                            <label for="kh_ngaysinh">Ngày sinh</label>&ndash;%&gt;--%>
<%--        &lt;%&ndash;                            <input name="kh_ngaysinh" type="text" id="kh_ngaysinh" class="form-control" placeholder="VD:09-05-1999"&ndash;%&gt;--%>
<%--        &lt;%&ndash;                                   required="" autofocus="">&ndash;%&gt;--%>
<%--        &lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--        <div class="col-md-12">--%>
<%--            <label for="cmnd">CMND</label>--%>
<%--            <input name="cmnd" type="text" id="cmnd" class="form-control" placeholder="VD:362209685"--%>
<%--                   required="" autofocus="">--%>
<%--        </div>--%>


<%--        <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>--%>
<%--        <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>--%>
<%--    </form>--%>
<%--    <br>--%>

<%--</div>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--%>
<%--<script>--%>
<%--    function toggleResetPswd(e) {--%>
<%--        e.preventDefault();--%>
<%--        $('#logreg-forms .form-signin').toggle() // display:block or none--%>
<%--        $('#logreg-forms .form-reset').toggle() // display:block or none--%>
<%--    }--%>

<%--    function toggleSignUp(e) {--%>
<%--        e.preventDefault();--%>
<%--        $('#logreg-forms .form-signin').toggle(); // display:block or none--%>
<%--        $('#logreg-forms .form-signup').toggle(); // display:block or none--%>
<%--    }--%>

<%--    $(() => {--%>
<%--        // Login Register Form--%>
<%--        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);--%>
<%--        $('#logreg-forms #cancel_reset').click(toggleResetPswd);--%>
<%--        $('#logreg-forms #btn-signup').click(toggleSignUp);--%>
<%--        $('#logreg-forms #cancel_signup').click(toggleSignUp);--%>
<%--    })--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi" class="h-100">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Nền tảng - Kiến thức cơ bản về WEB | Bảng tin</title>

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


</head>

<body>
<header>
    <jsp:include page="menu.jsp"></jsp:include>

</header>

<main role="main">
    <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
    <div class="container mt-4">
        <form class="needs-validation" name="frmthanhtoan" method="post"
              action="checkout">
            <input type="hidden" name="kh_tendangnhap" value="dnpcuong">

            <div class="py-5 text-center">
                <i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
                <h2>Thanh toán</h2>
                <p class="lead">Vui lòng kiểm tra thông tin Khách hàng, thông tin Giỏ hàng trước khi Đặt hàng.</p>
            </div>

<%--            <div class="row">--%>
<%--                <div class="col-md-4 order-md-2 mb-4">--%>
<%--                    <h4 class="d-flex justify-content-between align-items-center mb-3">--%>
<%--                        <span class="text-muted">Giỏ hàng</span>--%>
<%--                        <span class="badge badge-secondary badge-pill">2</span>--%>
<%--                    </h4>--%>
<%--                    <ul class="list-group mb-3">--%>
<%--                        <input type="hidden" name="sanphamgiohang[1][sp_ma]" value="2">--%>
<%--                        <input type="hidden" name="sanphamgiohang[1][gia]" value="11800000.00">--%>
<%--                        <input type="hidden" name="sanphamgiohang[1][soluong]" value="2">--%>

<%--                        <li class="list-group-item d-flex justify-content-between lh-condensed">--%>
<%--                            <div>--%>
<%--                                <h6 class="my-0">Apple Ipad 4 Wifi 16GB</h6>--%>
<%--                                <small class="text-muted">11800000.00 x 2</small>--%>
<%--                            </div>--%>
<%--                            <span class="text-muted">23600000</span>--%>
<%--                        </li>--%>
<%--                        <input type="hidden" name="sanphamgiohang[2][sp_ma]" value="4">--%>
<%--                        <input type="hidden" name="sanphamgiohang[2][gia]" value="14990000.00">--%>
<%--                        <input type="hidden" name="sanphamgiohang[2][soluong]" value="8">--%>

<%--                        <li class="list-group-item d-flex justify-content-between lh-condensed">--%>
<%--                            <div>--%>
<%--                                <h6 class="my-0">Apple iPhone 5 16GB White</h6>--%>
<%--                                <small class="text-muted">14990000.00 x 8</small>--%>
<%--                            </div>--%>
<%--                            <span class="text-muted">119920000</span>--%>
<%--                        </li>--%>
<%--                        <li class="list-group-item d-flex justify-content-between">--%>
<%--                            <span>Tổng thành tiền</span>--%>
<%--                            <strong>143520000</strong>--%>
<%--                        </li>--%>
<%--                    </ul>--%>


<%--                    <div class="input-group">--%>
<%--                        <input type="text" class="form-control" placeholder="Mã khuyến mãi">--%>
<%--                        <div class="input-group-append">--%>
<%--                            <button type="submit" class="btn btn-secondary">Xác nhận</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                </div>--%>
                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Thông tin khách hàng</h4>

                    <div class="row">
                        <div class="col-md-12">
                            <label for="kh_ten">Họ tên</label>
                            <input name="kh_ten" type="text"  id="kh_ten" class="form-control" placeholder="VD: Nguyễn Thành Công"
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
                            <label class="custom-control-label" for="httt-1">Tiền mặt</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="httt-2" name="httt_ma" type="radio" class="custom-control-input" required=""
                                   value="2">
                            <label class="custom-control-label" for="httt-2">Chuyển khoản</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="httt-3" name="httt_ma" type="radio" class="custom-control-input" required=""
                                   value="3">
                            <label class="custom-control-label" for="httt-3">Ship COD</label>
                        </div>
                    </div>
                    <hr class="mb-4">
                    <button class="btn btn-primary btn-lg btn-block" type="submit" name="btnDatHang">Đặt hàng</button>
                </div>
            </div>
        </form>

    </div>
    <!-- End block content -->
</main>

<footer class="footer mt-auto py-3">
    <div class="container">
        <%--        <span>Bản quyền © bởi <a href="https://nentang.vn">Nền Tảng</a> - <script>document.write(new Date().getFullYear());</script>.</span>--%>
        <%--        <span class="text-muted">Hành trang tới Tương lai</span>--%>

        <p class="float-right">
            <a href="print">Về đầu trang</a>
        </p>
    </div>
</footer>
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


