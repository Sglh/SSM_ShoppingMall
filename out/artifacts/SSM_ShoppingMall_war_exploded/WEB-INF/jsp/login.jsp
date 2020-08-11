<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <title>后台登录</title>
    <meta name="author" content="DeathGhost" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <style>
        body{height:100%;background:#16a085;overflow:hidden;position: relative;}
        canvas{z-index:-1;position:absolute;}
    </style>
    <script src="js/jquery.js"></script>
    <script src="js/verificationNumbers.js"></script>
    <script src="js/Particleground.js"></script>
    <script>
        $(document).ready(function() {
            //粒子背景特效
            $('body').particleground({
                dotColor: '#5cbdaa',
                lineColor: '#5cbdaa'
            });
            //验证码
            createCode();
            //测试提交，对接程序删除即可
            $(".submit_btn").click(function(){
                var uname =document.getElementById('user_id').value;
                var pwd =document.getElementById('user_pwd').value;
                location.href="user/loginUser/"+uname+","+pwd;
            });
        });
    </script>
</head>
<body>
<dl class="admin_login">
    <dt>
        <strong>站点后台管理系统</strong>
        <em>Management System</em>
    </dt>
    <from action="user/loginUser" method="post">
        <dd class="user_icon">
            <input type="text" placeholder="账号" value="lqd" class="login_txtbx" name="uname" id="user_id"/>
        </dd>
        <dd class="pwd_icon">
            <input type="password" value="123456" class="login_txtbx" name="pwd" id="user_pwd"/>
        </dd>
        <dd class="val_icon">
            <div class="checkcode">
                <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
                <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
            </div>
            <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
        </dd>
        <dd>
            <input type="submit" value="立即登录" class="submit_btn"/>
        </dd>
    </from>
    <dd>
        <p>© 2015-2016 DeathGhost 版权所有</p>
        <p>陕B2-20080224-1</p>
    </dd>
</dl>
</body>
</html>
