<%@ page import="com.sm.pojo.Address" %>
<%@ page import="java.util.List" %>
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
    <title>懒虫商城-反馈</title>
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

    </script>
</head>
<body>
<div class="ng-scope PB50">
    <img src="img/cs_001.jpg" class="img-responsive" alt="">
    <div class="borderleft5o">在线留言<span> (12小时内回复)</span></div>
    <form action="Add/comAdd" method="post">
    <div class="comment-box">
        <%
            List<Address> addresses = (List<Address>)session.getAttribute("addresses");
        %>
        <%=addresses!=null%>
       <c:if test="<%=addresses!=null%>">
        <div class="box">
            <label>所在大厦：</label>
            <select name="aid" >
            <option value="0" >--请选择--</option>
            <c:forEach items="${addresses}" var="addresses">
                <option value="${addresses.aid}">${addresses.addresss}</option>
            </c:forEach>
            </select>
        </div>
       </c:if>
        <c:if test="<%=addresses==null%>">
            <div class="box">
                <label>所在大厦：</label>
                <select name="aid" >
                <option value="0" >你还没有地址,请先添加地址。</option>
                </select>
            </div>
        </c:if>
        <div class="box">
            <label>您的姓名：</label>
            <input class="aui-Address-box-input" type="text" value="${u_user.uname}" readonly="readonly" />
        </div>
        <div class="box">
            <label>手机号码：</label>
            <input class="aui-Address-box-input" type="text" value="${u_user.phone}" readonly="readonly" />
        </div>
        <div class="box">
            <label>留言内容：</label>
            <textarea name="fremarks" class="aui-Address-box-textarea" placeholder="留言内容"></textarea>
        </div>
        <div class="box">
            <div style="text-align:center;"><input type="submit" value="确认提交" class="tr_pay am-btn"/>
        </div>
    </div>
</div>
    </form>
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
            <a href="cart.html">
                <img src="img/foot02.png" alt="">
                <p>购物车</p>
            </a>
            <i id="cartnum" class="ng-binding cartnum">0</i>
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
