<%@ page import="com.sm.pojo.Orders" %>
<%@ page import="java.util.List" %>
<%@ page import="com.sm.pojo.Address" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>懒虫商城-结算</title>
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
        $(function () {
            $("#submit").click(function() {

            })

        })


    </script>

</head>
<body>
<div class="ng-scope">
    <!--购物车空提示-->
    <div class="cartempty ng-scope ng-hide">
        <h3>亲，购物车空空的呢~</h3>
        <a href="shop.html">去逛逛</a>
    </div>
    <!--/购物车空提示-->

    <div class="cartpay ng-scope ">
        <div class="take-delivery">
            <div class="addr" >
                <p id="add" style="display: none">${addre}</p>
                <p style="color:#FA2C2A;font-size: 12px;" class="ng-binding">收货地址：${addre}</p>
                <p style="font-size:12px;color:#666" class="ng-binding">收货人：${u_user.uname}&nbsp;&nbsp;&nbsp;${u_user.phone} </p>
                <p style="font-size:12px;color:#666" class="ng-binding">详细地址：${addre}</p>
                <p class="edit"><a href="edit_address.html">修改</a></p>
            </div>
            <div class="yujibox">
                <div style="width:25%;float:left;margin-left:30px;color:#666;font-size:14px">送达时间：</div>
                <div style="width:60%;float:left;color:#888;font-size:12px">预计30分钟</div>
            </div>
            <div class="remarkbox">
                <span style="width:20%;float:left;margin-left:30px;color:#666;font-size:14px">留言：</span>
                <input class="input remark ng-pristine ng-untouched ng-valid ng-empty" placeholder="点此输入留言" type="text">
            </div>
            <a class="btn btn-default add_addr ng-hide" href="add_address.html">添加收货地址</a>
        </div>
        <section class="prolist_section">
            <ul id=" prolist" class="lists">

            </ul>
        </section>
        <!--底部结算导航-->
        <div class="cart ng-scope">
            <div class="r"><a href="javascript:;" id="submit">提交订单</a></div>

            <div class="l ng-binding c">
                ￥<label id="totalmoney">${nums}</label>
                <span class="font11 points">本次消费获得积分：0</span>
            </div>
        </div>
        <!--/底部结算导航-->
    </div>
</div>
</body>
</html>

