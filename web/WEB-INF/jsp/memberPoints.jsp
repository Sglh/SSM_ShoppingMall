<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.sm.pojo.Orders" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <!-- Title here -->
    <title>懒虫商城-个人中心--积分消费记录</title>
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
</head>
<body>
<div class="ng-scope">
    <div class="header ng-scope">
        <img src="img/tou.png" class="img">
        <p class="mobile ng-binding">15625632565</p>
        <p class="nickname ng-binding">阿拉伯联合酋长国-村长</p>
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
    <div class="pointslist ng-scope">
        <table>
            <thead>
            <tr>
                <td width="20%">日期</td>
                <td width="15%">获得</td>
                <td width="15%">消费</td>
                <td width="50%">详细说明</td>
            </tr>
            </thead>
            <tbody>
            <%
                List<Orders> expenses = (List<Orders>)session.getAttribute("com");
                int i=0;
            %>
            <c:forEach items="${com}" var="com">
                <tr>
                    <%
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    %>
                    <td><%=sdf.format(expenses.get(i).getOdata())%></td>
                    <%
                    i++;
                    %>
                    <td>${com.consumption.recharge}</td>
                    <td>${com.consumption.consum}</td>
                    <td>订单${com.oid}完成增加积分</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<!--底部导航-->
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
<!--/底部导航-->
</body>
</html>
