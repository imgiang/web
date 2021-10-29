<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 22/10/2021
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
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
</head>

<body>
<!-- header -->

<!-- end header -->

<main role="main">
    <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
    <div class="container mt-4">
        <form class="needs-validation" name="frmthanhtoan" method="post"
              action="#">
            <input type="hidden" name="kh_tendangnhap" value="dnpcuong">

            <div class="py-5 text-center">
                <i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
                <h2>Thanh toán</h2>
                <p class="lead">Vui lòng kiểm tra thông tin Khách hàng, thông tin Giỏ hàng trước khi Đặt hàng.</p>
            </div>

            <div class="row">
                <div class="col-md-4 order-md-2 mb-4">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-muted">Giỏ hàng</span>
                        <span class="badge badge-secondary badge-pill">2</span>
                    </h4>
                    <ul class="list-group mb-3">
                        <input type="hidden" name="sanphamgiohang[1][sp_ma]" value="2">
                        <input type="hidden" name="sanphamgiohang[1][gia]" value="11800000.00">
                        <input type="hidden" name="sanphamgiohang[1][soluong]" value="2">

                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Apple Ipad 4 Wifi 16GB</h6>
                                <small class="text-muted">11800000.00 x 2</small>
                            </div>
                            <span class="text-muted">23600000</span>
                        </li>
                        <input type="hidden" name="sanphamgiohang[2][sp_ma]" value="4">
                        <input type="hidden" name="sanphamgiohang[2][gia]" value="14990000.00">
                        <input type="hidden" name="sanphamgiohang[2][soluong]" value="8">

                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Apple iPhone 5 16GB White</h6>
                                <small class="text-muted">14990000.00 x 8</small>
                            </div>
                            <span class="text-muted">119920000</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Tổng thành tiền</span>
                            <strong>143520000</strong>
                        </li>
                    </ul>


                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Mã khuyến mãi">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-secondary">Xác nhận</button>
                        </div>
                    </div>

                </div>
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
                            <input  name="kh_gioitinh" type="text" id="kh_gioitinh" class="form-control" placeholder="VD:Nam"
                                    required="" autofocus="">

                        </div>
                        <div class="col-md-12">
                            <label for="kh_diachi">Địa chỉ</label>
                            <input name="kh_diachi" type="text" id="kh_diachi" class="form-control" placeholder="VD:130 Xô Viết Nghệ Tỉnh"
                                   required="" autofocus="">
                        </div>
                        <div class="col-md-12">
                            <label for="kh_dienthoai">Điện thoại</label>
                            <input name="kh_dienthoai" type="text" id="kh_dienthoai" class="form-control" placeholder="VD:0915659223"
                                   required="" autofocus="">
                        </div>
                        <div class="col-md-12">
                            <label for="kh_email">Email</label>
                            <input name="kh_email" type="text" id="kh_email" class="form-control" placeholder="VD:phucuong@ctu.edu.vn"
                                   required="" autofocus="">
                        </div>
                        <div class="col-md-12">
                            <label for="kh_ngaysinh">Ngày sinh</label>
                            <input name="kh_ngaysinh" type="text" id="kh_ngaysinh" class="form-control" placeholder="VD:09-05-1999"
                                   required="" autofocus="">
                        </div>
                        <div class="col-md-12">
                            <label for="kh_cmnd">CMND</label>
                            <input name="kh_cmnd" type="text" id="kh_cmnd" class="form-control" placeholder="VD:362209685"
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
<%--                    </div>--%>
<%--                    <hr class="mb-4">--%>
<%--                    <button class="btn btn-primary btn-lg btn-block" type="submit" name="btnDatHang">Đặt--%>
<%--                        hàng</button>--%>
<%--                </div>--%>
                        <div class="form-group ">
                            <hr class="mb-4">
                            <a href="home" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block ">Đặt hàng </a>
                        </div>
        </form>

    </div>
    <!-- End block content -->
</main>

<!-- footer -->
<footer class="footer mt-auto py-3">
    <div class="container">
<%--        <span>Bản quyền © bởi <a href="https://nentang.vn">Nền Tảng</a> - <script>document.write(new Date().getFullYear());</script>.</span>--%>
<%--        <span class="text-muted">Hành trang tới Tương lai</span>--%>

        <p class="float-right">
            <a href="print">Về đầu trang</a>
        </p>
    </div>
</footer>
<!-- end footer -->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/popperjs/popper.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Custom script - Các file js do mình tự viết -->
<script src="../assets/js/app.js"></script>

</body>

</html>