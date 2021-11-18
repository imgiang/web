<%--
  Created by IntelliJ IDEA.
  User: THU HUONG
  Date: 9/15/2021
  Time: 12:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/fork-awesome/1.1.7/css/fork-awesome.min.css">
<style>
    .footer{
        background: #152F4F;
        color:white;

    .links{
    ul {list-style-type: none;}
    li a{
        color: white;
        transition: color .2s;
    &:hover{
         text-decoration:none;
         color:#4180CB;
     }
    }
    }
    .about-company{
    i{font-size: 25px;}
    a{
        color:white;
        transition: color .2s;
    &:hover{color:#4180CB}
    }
    }
    .location{
    i{font-size: 18px;}
    }
    .copyright p{border-top:1px solid rgba(255,255,255,.1);}
    }
    .footer{
        background-color: #096363;
    }
</style>
<body>
<!-- Button trigger modal -->
<fmt:setLocale value="${sessionScope.LANG}"/>
<fmt:setBundle basename="mlang"/>

<div class="mt-5 pt-5 pb-5 footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-xs-12 about-company">
                <h2><a class="navbar-brand " style="color:#f802c2 ;font-size:35px;font-family: Florence, cursive;" href="home">LOVER</a></h2>
                <p class="pr-5 text-white-50"><fmt:message key="a.quote" /></p>
                <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i class="fa fa-linkedin-square"></i></a></p>
            </div>
<%--            <div class="col-lg-3 col-xs-12 links">--%>
<%--                <h4 class="mt-lg-0 mt-sm-3">Links</h4>--%>
<%--                <ul class="m-0 p-0">--%>
<%--                    <li>Lorem ipsum</li>--%>
<%--                    <li>Nam mauris velit</li>--%>
<%--                    <li>Etiam vitae mauris</li>--%>
<%--                    <li>Fusce scelerisque</li>--%>
<%--                    <li>Sed faucibus</li>--%>
<%--                    <li>Mauris efficitur nulla</li>--%>
<%--                </ul>--%>
<%--            </div>--%>
            <div class="col-lg-4 col-xs-12 location">
                <h4 class="mt-lg-0 mt-sm-4">

                    <fmt:message key="a.location" />
                </h4>
                <a href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90%E1%BA%A1i+H%E1%BB%8Dc+Kinh+T%E1%BA%BF+Qu%E1%BB%91c+D%C3%A2n/@20.9982745,105.8420207,16.06z/data=!4m5!3m4!1s0x0:0xd2ec575c01017afa!8m2!3d20.9999717!4d105.8426663?hl=vi" target="_blank" style="padding-bottom: 2px;text-decoration:none;color:white;">
                    <p ><img  src="https://cdn-icons.flaticon.com/png/512/3038/premium/3038019.png?token=exp=1637218095~hmac=ec3ea354ee8ca7c935b0d774e4826310" style="width: 20px;"  alt="anh">Đại học Kinh Tế quốc dân</p>

                </a>
                <p class="mb-0"><i class="fa fa-phone mr-3"></i>(541) 754-3010</p>
                <p><i class="fa fa-envelope-o mr-3"></i>love@hsdf.com</p>
            </div>
            <div class="col-lg-3 col-xs-12 links">
                <h4 class="mt-lg-0 mt-sm-3"><fmt:message key="a.payment" /></h4>
                <a href="https://www.google.com/mahttps://www.paypal.com/vn/home" target="_blank">
                    <img  src="https://i.pinimg.com/originals/38/ce/a1/38cea1a633147f40ac8ea0d8499f25fb.png" style="height :130px; width: 250px" alt="anh">
                </a>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script>"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"</script>
<script>"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"</script>
</body>
</html>