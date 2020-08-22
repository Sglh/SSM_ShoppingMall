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
    <title>懒虫商城-结算--收货地址</title>
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
                var add=$("#dong").find("option:selected").text();

                $.get(
                    "car/Addres",
                    {"add": add},
                    function (data) {
                        if(data==="0"){
                            alert("你还没有选择地址！！！");
                            window.location.reload();
                        }else{
                            location.href="cart.html";
                        }
                    }
                )
            })

        })

    </script>
</head>
<body style="background:#F5F5F5;">
<div class="ng-scope">
    <div class="btn btn-default add_addr_title">收货地址</div>
    <div class="addr_con">
        <div class="add_addr_dasha"></div>
        姓名：<input class="aui-Address-box-input" id="name" value="${u_user.uname}" type="text" readonly="readonly">
        手机号码：<input class="aui-Address-box-input" id="phone" value="${u_user.phone}" type="text" readonly="readonly">
        <c:if test="${addresses!=null}">
        <select class="aui-Address-box-select" id="dong" style="width:100%">
            <option class="aa" selected="selected" value="0">请选择</option>
            <c:forEach items="${addresses}" var="addresses">
            <option class="aa" value="${addresses.addresss}">${addresses.addresss}</option>
            </c:forEach>
        </select>
        </c:if>
        <a href="address.html" class="red-color" >添加地址</a>
<%--        <a href="#" class="red-color"  style="margin-top: 20px" onclick="addre()">保 存</a>--%>
        <input style="margin-top: 20px" class="red-color" value="保 存" type="submit" id="submit">
    </div>
</div>

<!--dialog-->
<div id="_alert_" class="weui_dialog_alert hide">
    <div class="weui_mask"></div>
    <div class="weui_dialog">
        <div class="weui_dialog_hd"><strong class="weui_dialog_title" id="alert-title"></strong></div>
        <div class="weui_dialog_bd" id="alert-msg"></div>
        <div class="weui_dialog_ft">
            <a href="javascript:;" class="weui_btn_dialog primary" onclick="weui_dialog_close()">确定</a>
        </div>
    </div>
</div>
</body>
</html>

