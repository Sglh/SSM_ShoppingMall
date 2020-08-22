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
                //发送ajax请求
                var add = $('#add').html();
                if(add==='你还没有添加地址'){
                    alert("你还没有添加地址");
                }else {
                    var xiaofei=$('#xiaofei').html();
                    var yue=$('#yue').html();
                    // alert(xiaofei);
                    // alert("余额"+yue);
                    // alert(xiaofei>yue);
                    if(parseFloat(xiaofei)>parseFloat(yue)){
                        alert("你的余额不足，请充值。");
                    }else {
                        var liuyan=document.getElementById("liuyan").value;
                        var name=prompt("请输入您的密码","");
                        if(name==="123456"){
                            $.get(
                                "car/zhifu",
                                {"add":add,
                                "liuyan":liuyan},
                                function (data) {
                                    if(data === "1"){
                                        alert("支付成功！");
                                        window.location.reload();
                                    }
                                }
                            )
                        }else {
                        alert("密码错误！");
                        }
                    }
                }
                // if(confirm("请确认支付信息")){
                //     $.get(
                //         "user/BalanceAdd",
                //         {"balance":p_html},
                //         function (data) {
                //             if(data === "1"){
                //                 alert("支付成功！");
                //                 window.location.reload();
                //             }
                //         }
                //     )
                // }
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
                <p id="xiaofei" style="display: none">${nums}</p>
                <p id="yue" style="display: none">${u_user.balance}</p>
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
                <input type="text" class="input remark ng-pristine ng-untouched ng-valid ng-empty" placeholder="点此输入留言" type="text" id="liuyan">
            </div>
            <a class="btn btn-default add_addr ng-hide" href="add_address.html">添加收货地址</a>
        </div>
        <section class="prolist_section">
            <ul id=" prolist" class="lists">
                <c:forEach items="${orderser}" var="order">
                <li price="${order.commodity.price}" class="on" cart="1">
                    <div class="l">
                        <a href="proDetail.html" target="_blank"><img src="img/cate/${order.picture.filename}.${order.picture.filetype}" class="img-responsive" alt="..." /></a>
                    </div>
                    <div class="r">
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${order.commodity.coid}</p>
                        <p class="t">${order.commodity.coname}</p>
                        <p class="price">￥${order.commodity.price}</p>
                        <div class="jifen">送积分：0</div>
                        <div class="showaddcart">
                            <div class="num_con">
                                <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                <span  class="number">${order.number}</span>
                                <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                            </div>
                        </div>
                    </div>
                </li>
                </c:forEach>
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

