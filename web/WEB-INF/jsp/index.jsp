<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Title here -->
    <title>懒虫商城-首页</title>
    <!-- Description, Keywords and Author -->
    <meta name="description" content="懒虫商城" />
    <meta name="keywords" content="懒虫商城" />
    <meta name="author" content="懒虫商城" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="Images/ico/favicon.ico" type="image/x-icon">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/response.css" />
    <!-- jQuery -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/swiper.min.js" type="text/javascript"></script>
    <!-- Custom JS -->
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //首页banner
            var mySwiper = new Swiper('.slide', {
                autoplay: 5000,
                visibilityFullFit: true,
                loop: true,
                pagination: '.pagination',
            });
        });
    </script>
</head>
<body class="PB50">
<!--slide-->
<div class="slide">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <a href="bannerDetail.html">
                <img src="img/slide001.jpg" />
            </a>
        </div>
        <div class="swiper-slide">
            <a href="bannerDetail.html">
                <img src="img/slide002.jpg" />
            </a>
        </div>
        <div class="swiper-slide">
            <a href="bannerDetail.html">
                <img src="img/slide003.jpg" />
            </a>
        </div>
    </div>
    <div class="pagination"></div>
</div>
<!--/slide-->

<div class="ng-scope">
    <div class="addWrap ng-scope">
        <a href="address.html" class="map_box"><img src="img/map_icon.png" class="img-responsive" alt="..."></a>
    </div>
    <div class="location_index ng-scope">
        <div class="addr">
            <a href="address.html">
                <p class="ng-binding">添加地址 ></p>
            </a>
        </div>
        <ul class="index_menu">
            <li>
                <a href="shop.html">
                    <img src="img/index01.png" class="img-responsive" alt="..." />
                    <p>进入超市</p>
                </a>
            </li>
            <li>
                <a href="tof.html">
                    <img src="img/index02.png" class="img-responsive" alt="..." />
                    <p>热食</p>
                </a>
            </li>
            <li>
                <a href="shop.html">
                    <img src="img/index03.png" class="img-responsive" alt="..." />
                    <p>水果</p>
                </a>
            </li>
        </ul>
    </div>
    <div class="clear ng-scope"></div>
</div>
<!--底部导航-->
<nav class="ng-scope">
    <ul class="nav">
        <li>
            <a href="shop/allCommodity">
                <img src="img/foot01.png" alt="">
                <p>超市</p>
            </a>
        </li>
        <li>
            <a href="car/Cart">
                <img src="img/foot02.png" alt="">
                <p>购物车</p>
            </a>
            <i id="cartnum" class="ng-binding cartnum">${num}</i>
        </li>
        <li>
            <a href="member.html">
                <img src="img/foot03.png" alt="">
                <p>我的</p>
            </a>
        </li>
        <li>
            <a href="user/allOrder">
                <img src="img/foot04.png" alt="">
                <p>订单</p>
            </a>
        </li>
    </ul>
</nav>
<!--/底部导航-->
</body>
</html>

