<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>充值界面</title>
    <link rel="stylesheet" type="text/css" href="css/amazeui.min.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />

</head>
<body>
<div class="pay" style="width: 100%;align-content: center">
    <!--主内容开始编辑-->
    <div class="tr_recharge">
        <div class="tr_rechtext">
            <p class="te_retit"><img src="images/coin.png" alt="" />充值中心</p>
            <p>1.出行在外，哪能不用钱，充钱吧少年。</p>
            <p>2.在本商城里冲的钱概不退还。</p>
        </div>
        <form action="" class="am-form" id="doc-vld-msg">
            <div class="tr_rechbox">
                <div class="tr_rechhead">
                    <img src="images/ys_head2.jpg" />
                    <p>充值帐号：
                        <a>${u_user.uname}</a>
                    </p>
                    <div class="tr_rechheadcion">
                        <img src="images/coin.png" alt="" />
                        <span>当前余额：<span>${u_user.balance}</span></span>
                    </div>
                </div>
                <div class="tr_rechli am-form-group">
                    <ul class="ui-choose am-form-group" id="uc_01">
                        <li>
                            <label class="am-radio-inline">
                                <input type="radio"  value="" name="docVlGender" required data-validation-message="请选择一项充值额度"> 10￥
                            </label>
                        </li>
                        <li>
                            <label class="am-radio-inline">
                                <input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 20￥
                            </label>
                        </li>
                        <br/>
                        <li>
                            <label class="am-radio-inline">
                                <input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 50￥
                            </label>
                        </li>
                        <li>
                            <label class="am-radio-inline">
                                <input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 其他金额
                            </label>
                        </li>
                    </ul>
                    <!--<span>1招兵币=1元 10元起充</span>-->
                </div>
                <div class="tr_rechoth am-form-group">
                    <span>其他金额：</span>
                    <input type="number" min="10" max="10000" value="10.00元" class="othbox" data-validation-message="充值金额范围：10-10000元" />
                    <!--<p>充值金额范围：10-10000元</p>-->
                </div>
                <br/>
                <div class="tr_rechcho am-form-group">
                    <span>充值方式：</span>
                    <label class="am-radio" >
                        <input type="radio" name="radio1" value="" data-am-ucheck required data-validation-message="请选择一种充值方式"><img src="images/wechatpay.png">
                    </label>
                    <br/>
                    <label class="am-radio" style="margin-right:30px;">
                        <input type="radio" name="radio1" value="" data-am-ucheck data-validation-message="请选择一种充值方式"><img src="images/zfbpay.png">
                    </label>
                </div>
                <div class="tr_rechnum">
                    <span>应付金额：</span>
                    <p class="rechnum">0.00元</p>
                </div>
            </div>
            <div class="tr_paybox">
                <input type="button" value="确认支付" class="tr_pay am-btn" id="submit"/>
                <span>温馨提示：请不要利用系统bug</span>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/amazeui.min.js"></script>
<script type="text/javascript" src="js/ui-choose.js"></script>
<script type="text/javascript">
    // 将所有.ui-choose实例化
    $('.ui-choose').ui_choose();
    // uc_01 ul 单选
    var uc_01 = $('#uc_01').data('ui-choose'); // 取回已实例化的对象
    uc_01.click = function(index, item) {
        console.log('click', s, item.text())
    }
    uc_01.change = function(index, item) {
        console.log('change', s, item.text())
    }
    $(function () {
        $("#submit").click(function(){
            var p_html = $('.rechnum').html();
            if(confirm("请确认充值")){
                $.get(
                    "user/BalanceAdd",
                    {"balance":p_html},
                    function (data) {
                        if(data === "1"){
                            //location.href="dept/selectDeptAll";
                            alert("充值成功！");
                            //window.location.reload();
                            self.location=document.referrer;
                        }
                    }
                )
            }
        });
    })
    $(function() {
        $('#uc_01 li:eq(3)').click(function() {
            $('.tr_rechoth').show();
            $('.tr_rechoth').find("input").attr('required', 'true')
            $('.rechnum').text('10.00元');
        })
        $('#uc_01 li:eq(0)').click(function() {
            $('.tr_rechoth').hide();
            $('.rechnum').text('10.00元');
            $('.othbox').val('');
        })
        $('#uc_01 li:eq(1)').click(function() {
            $('.tr_rechoth').hide();
            $('.rechnum').text('20.00元');
            $('.othbox').val('');
        })
        $('#uc_01 li:eq(2)').click(function() {
            $('.tr_rechoth').hide();
            $('.rechnum').text('50.00元');
            $('.othbox').val('');
        })
        $(document).ready(function() {
            $('.othbox').on('input propertychange', function() {
                var num = $(this).val();
                $('.rechnum').html(num + ".00元");
            });
        });
    })

    $(function() {
        $('#doc-vld-msg').validator({
            onValid: function(validity) {
                $(validity.field).closest('.am-form-group').find('.am-alert').hide();
            },
            onInValid: function(validity) {
                var $field = $(validity.field);
                var $group = $field.closest('.am-form-group');
                var $alert = $group.find('.am-alert');
                // 使用自定义的提示信息 或 插件内置的提示信息
                var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

                if(!$alert.length) {
                    $alert = $('<div class="am-alert am-alert-danger"></div>').hide().
                    appendTo($group);
                }
                $alert.html(msg).show();
            }
        });

    });
</script>
<div style="text-align:center;">
</div>
</body>
</html>
