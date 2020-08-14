<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sm.pojo.Orders" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <base href="<%=basePath%>">
    <!-- Title here -->
    <title>懒虫商城-订单</title>
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
    <header class="ng-scope">
        <h4 class="title-order">
            <a class="title-top" href="member.html">我的订单</a>
        </h4>
        <ul class="navlist">
            <li type="lists" class="rightborder active">超市订单</li>
            <%--<li type="tof">外卖订单</li>--%>
        </ul>
    </header>
    <div class="orderlist" id="order_lists">
        <ul class="lists ng-scope">
            <c:forEach items="${orders}" var="order">
            <li>
                <p><fmt:formatDate value="${order.odata}" pattern="yyyy-MM-dd a HH:mm:ss"/> <span class="status">已取消</span></p>
                <p>订单编号：${order.coid}</p>
                <p>订单备注：${order.remarks}</p>
                <p>收货地址：${order.address.addresss}</p>
                <ul class="pdtlist">
                    <li>
                        <div class="l">
                            <img src="img/cate/${order.picture.filename}.${order.picture.filetype}" class="img-responsive" alt="..." />
                        </div>
                        <div class="r">
                            <p class="t">${order.commodity.coname}</p>
                            <p class="money">￥${order.commodity.price} x ${order.number}</p>
                            <p class="jf">送积分：0</p>
                        </div>
                    </li>
                </ul>
                <div class="bottom">
                    <p>总计：￥21.78 元  积分抵扣：￥0.00 元</p>
                    <p class="money">实付：￥21.78元</p>
                    <a href="javascript:;">删除记录</a>
                </div>
            </li>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
