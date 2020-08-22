<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <!-- Title here -->
    <title>懒虫商城-个人中心</title>
    <!-- Description, Keywords and Author -->
    <meta name="description" content="懒虫商城" />
    <meta name="keywords" content="懒虫商城" />
    <meta name="author" content="懒虫商城" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="Images/ico/favicon.ico" type="image/x-icon">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/response.css" />
    <!-- jQuery -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <!-- Custom JS -->
    <script type="text/javascript" src="js/custom.js"></script>
    <script>
        function signIn() {
            $.get(
                "sig/signIn",
                function (data) {
                    if(data ==="1"){
                       alert("签到成功!")
                    }
                    if(data ==="0"){
                        alert("签到失败!")
                    }
                    if(data ==="-1"){
                        alert("已经签到过!")
                    }
                }
            )
        }
        $(function(){
            window.onpageshow = function (event) {
                if (event.persisted) {
                    window.location.reload();
                }
            }
        });
    </script>
</head>
<body>
<div class="ng-scope">
    <div class="header ng-scope">
        <img src="img/tou.png" class="img">
        <p class="mobile ng-binding">${u_user.uname}</p>
        <p class="nickname ng-binding">${u_user.phone}</p>
    </div>
    <div style="clear:both;background:#E0E0E0;height:5px;" class="ng-scope"></div>
    <ul class="headerlist ng-scope">
        <li class="ng-binding">
            消费积分余额 ￥${u_user.balance}
        </li>
        <li class="ng-binding">
            累计消费 ￥${u_user.ubalance}
        </li>
    </ul>
    <div style="clear:both;background:#E0E0E0;height:5px;" class="ng-scope"></div>
    <ul class="userlist ng-scope">
        <li>
            <a onclick="signIn()">
                <p class="ico ico-reward"></p>
                <p>每日签到</p>
            </a>
        </li>
        <li>
            <a href="user/allOrder">
                <p class="ico ico-order"></p>
                <p>我的订单</p>
            </a>
        </li>
        <li>
            <a href="cq.html">
                <p class="ico ico-recommend"></p>
                <p>充值有礼</p>
            </a>
        </li>
        <li>
            <a href="con/memberPo">
                <p class="ico ico-coupon"></p>
                <p>积分明细</p>
            </a>
        </li>
        <li>
            <a href="jieshao.html">
                <p class="ico ico-about"></p>
                <p>关于我们</p>
            </a>
        </li>
        <li>
            <a href="Add/comm">
                <p class="ico ico-customer"></p>
                <p>客服/反馈</p>
            </a>
        </li>
    </ul>
</div>
<nav class="ng-scope">
    <ul class="nav">
        <li>
            <a href="shop.html">
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
</body>
</html>