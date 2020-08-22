<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <title>短信登录</title>
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


        function fasong() {
            //发送短信
                var phone = $("#user_id").val();
                $.get(
                    "user/smsSend",
                    {"phone":phone},
                    function (data) {
                        var n = data;
                        if(n==1){
                            $("#spansms").html("短信发送成功!")
                        }else{
                            $("#spansms").html("此手机号码没有注册,请先注册!")
                        }
                    }
                )
        }

        /*登录*/
        /*function denglu() {
            var code = $("#J_codetext").val();
            $.get(
                "user/smsLogin",
                {"code":code},
                function (data) {
                   alert("data"+data);
                   if(data != null) {
                       window.location.href = data;
                   }
                }
            )
        }*/
    </script>
</head>
<body>
<dl class="admin_login">
    <dt>
        <strong>超市</strong>
        <em>Management System</em>
    </dt>
    <form action="user/smsLogin" method="post" >
        <dd class="user_icon">
            <input type="text" placeholder="账号" value="13272157605" class="login_txtbx" name="uname" id="user_id"/>
        </dd>
        <dd class="val_icon">
            <div>
                <input type="text" id="J_codetext" placeholder="验证码" class="login_txtbx" name="code">
            </div>
        </dd>
        <%--<a href="javascript:void(0)"  id="sendsms">发送短信</a>--%>
        <input type="button" id="sendsms" onclick="fasong()" style="color: #1a1a1a" value="发送短信">
        <span id="spansms" style="color: red">${msg}</span>
        <dd>
            <input type="submit" value="立即登录" class="submit_btn" />
        </dd>
    </form>
</dl>
</body>
</html>
