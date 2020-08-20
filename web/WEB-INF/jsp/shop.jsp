<%@ page import="com.sm.pojo.Commodity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.sm.pojo.Category" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <base href="<%=basePath%>">
    <!-- Title here -->
    <title>懒虫商城-超市</title>
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
    <div class="loca ng-scope">
        <a class="change ng-binding" href="address.html">蓝坤大厦<span>[切换]</span></a>
    </div>
    <div class="content ng-scope">
        <aside style="height:663px">
                <ul id="aside">
                <li class="table" data-cid="1" data-ident="0">
                <p>新品</p>
                </li>
                <li class="table active" data-cid="3" data-ident="1">
                    <p>食品</p>
                </li>
                <li class="table" data-cid="4" data-ident="1">
                    <p>饮品</p>
                </li>
                <li class="table" data-cid="5" data-ident="0">
                    <p>雪糕</p>
                </li>
                <li class="table" data-cid="7" data-ident="0">
                    <p>槟榔</p>
                </li>
                <li class="table" data-cid="8" data-ident="0">
                    <p>办公</p>
                </li>
                <li class="table" data-cid="9" data-ident="0">
                    <p>生活</p>
                </li>
                <li class="table" data-cid="11" data-ident="0">
                    <p>水果</p>
                </li>
            </ul>
        </aside>
        <!-- 新品 -->
        <div class="cate hide" id="cate_1">
            <div class="con con_no">
                <ul>看看是不是到这里了</ul>
            </div>
        </div>
        <!-- 食品 -->
        <div class="cate show" id="cate_3">
            <div class="con">
                <img class="banner" src="img/cate/sushi.jpg" alt="">
                <ul>
                    <li data-cid="301" data-ident="0">
                        <img class="banner" src="img/cate/up1.jpg" alt="">
                        <p>面包/糕点</p>
                    </li>
                    <li data-cid="302" data-ident="0">
                        <img class="banner" src="img/cate/up2.jpg" alt="">
                        <p>方便面</p>
                    </li>
                    <li data-cid="303" data-ident="0">
                        <img class="banner" src="img/cate/up3.jpg" alt="">
                        <p>八宝粥</p>
                    </li>
                    <li data-cid="307" data-ident="0">
                        <img class="banner" src="img/cate/up7.jpg" alt="">
                        <p>麻辣</p>
                    </li>
                    <li data-cid="308" data-ident="0">
                        <img class="banner" src="img/cate/up8.jpg" alt="">
                        <p>1元专区</p>
                    </li>
                    <li data-cid="309" data-ident="0">
                        <img class="banner" src="img/cate/up9.jpg" alt="">
                        <p>进口食品</p>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 饮品 -->
        <div class="cate hide" id="cate_4">
            <div class="con">
                <img class="banner" src="img/cate/yinpin.jpg" alt="">
                <ul>
                    <li data-cid="401" data-ident="0">
                        <img class="banner" src="img/cate/up10.jpg" alt="">
                        <p>奶类</p>
                    </li>
                    <li data-cid="402" data-ident="0">
                        <img class="banner" src="img/cate/up11.jpg" alt="">
                        <p>碳酸饮料</p>
                    </li>
                    <li data-cid="404" data-ident="0">
                        <img class="banner" src="img/cate/up13.jpg" alt="">
                        <p>饮用水</p>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 雪糕 -->
        <div class="cate hide" id="cate_5">
            <div class="con con_no">
                <ul></ul>
            </div>
        </div>
        <!-- 代购 -->
        <!-- 槟榔 -->
        <div class="cate hide" id="cate_7">
            <div class="con con_no">
                <ul></ul>
            </div>
        </div>
        <!-- 办公 -->
        <div class="cate hide" id="cate_8">
            <div class="con con_no">
                <ul></ul>
            </div>
        </div>
        <!-- 生活 -->
        <div class="cate hide" id="cate_9">
            <div class="con">
                <ul></ul>
            </div>
        </div>
        <!-- 热饮 -->
        <div class="cate hide" id="cate_10">
            <div class="con con_no">
                <ul></ul>
            </div>
        </div>
        <!-- 水果 -->
        <div class="cate hide" id="cate_11">
            <div class="con con_no">
                <ul></ul>
            </div>
        </div>

        <section>
            <%
                List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                int i = 0;
            %>
            <ul id="lists_1" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        Date newdate = commodities.get(i).getNewdate();
                        /*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String data = sdf.format(commodities.get(i).getNewdate());*/
                        Date date = new Date();
                        if(i == 5) {
                            date = newdate;
                        }

                        System.out.println("时间："+newdate);


                        //if(newdate.compareTo(date) > 0){
                    %>
                <li price=${commodity.price}>
                    <p class="uid" style="display: none">${u_user.uid}</p>
                    <p class="coid" style="display: none">${commodity.coid}</p>
                    <p class="coname" style="display: none">${commodity.coname}</p>
                    <div class="l view">
                        <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                    </div>
                    <div class="r">
                        <p class="t">${commodity.coname}</p>
                        <p class="price">￥${commodity.price}</p>
                        <div class="jifen">送积分：0</div>
                        <div class="showaddcart">
                            <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                            <div class="num_con">
                                <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                <span class="number">0</span>
                                <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                            </div>
                        </div>
                    </div>
                </li>
                    <%
                        //}
                        i++;
                    %>
                </c:forEach>
                <%
                i = 0;
                %>
            </ul>
            <ul id="lists_3" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <ul id="lists_4" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <li price=price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <ul id="lists_5" class="lists hide">

                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==3){
                    %>
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t" id="coname">${commodity.coname}</p>
                            <p class="price" id="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                                <div class="showaddcart">
                                    <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                    <div class="num_con">
                                        <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                        <span class="number">0</span>
                                        <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                    </div>
                                </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_7" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <ul id="lists_8" class="lists hide">

                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==6){
                    %>
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_9" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <ul id="lists_10" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <ul id="lists_11" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==8){
                    %>
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_301" class="lists hide">
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==12){
                    %>
                    <li price=${commodity.price}>
                        <p class="uid" style="display: none">${u_user.uid}</p>
                        <p class="coid" style="display: none">${commodity.coid}</p>
                        <p class="coname" style="display: none">${commodity.coname}</p>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_302" class="lists hide">
                <p class="uid" style="display: none">${u_user.uid}</p>
                <p class="coid" style="display: none">${commodity.coid}</p>
                <p class="coname" style="display: none">${commodity.coname}</p>
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==13){
                    %>
                    <li price=${commodity.price}>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_303" class="lists hide">
                <p class="uid" style="display: none">${u_user.uid}</p>
                <p class="coid" style="display: none">${commodity.coid}</p>
                <p class="coname" style="display: none">${commodity.coname}</p>
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==14){
                    %>
                    <li price=${commodity.price}>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_307" class="lists hide">
                <p class="uid" style="display: none">${u_user.uid}</p>
                <p class="coid" style="display: none">${commodity.coid}</p>
                <p class="coname" style="display: none">${commodity.coname}</p>
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==15){
                    %>
                    <li price=${commodity.price}>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_308" class="lists hide">
                <p class="uid" style="display: none">${u_user.uid}</p>
                <p class="coid" style="display: none">${commodity.coid}</p>
                <p class="coname" style="display: none">${commodity.coname}</p>
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==16){
                    %>
                    <li price=${commodity.price}>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
            <ul id="lists_309" class="lists hide">
                <p class="uid" style="display: none">${u_user.uid}</p>
                <p class="coid" style="display: none">${commodity.coid}</p>
                <p class="coname" style="display: none">${commodity.coname}</p>
                <c:forEach items="${commodities}" var="commodity">
                    <%
                        //List<Commodity> commodities = (List<Commodity>)session.getAttribute("commodities");
                        Category category = commodities.get(i).getCategory();
                        int cid = category.getCid();

                        if(cid==17){
                    %>
                    <li price=${commodity.price}>
                        <div class="l view">
                            <a href="proDetail.html" target="_blank"><img src="img/cate/${commodity.picture.filename}.${commodity.picture.filetype}" class="img-responsive" alt="..." /></a>
                        </div>
                        <div class="r">
                            <p class="t">${commodity.coname}</p>
                            <p class="price">￥${commodity.price}</p>
                            <div class="jifen">送积分：0</div>
                            <div class="showaddcart">
                                <img src="img/shop_cart02.png" class="img-responsive join" alt="..." />
                                <div class="num_con">
                                    <img src="img/num_l.png" class="img-responsive num_l" alt="..." />
                                    <span class="number">0</span>
                                    <img src="img/num_r.png" class="img-responsive num_r" alt="..." />
                                </div>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                        i++;
                    %>
                </c:forEach>
                <%
                    i = 0;
                %>
            </ul>
        </section>
        <div class="clear"></div>
    </div>
</div>
<!--底部结算导航-->
<div class="cart ng-scope">
    <div class="r"><a href="cart.html">去结算</a></div>
    <div class="l ng-binding">
        ￥<label id="totalmoney">0</label>
    </div>
    <i id="totalcartnumber" class="ng-binding cartnum">0</i>
    <a href="cart.html"><img src="img/shop_cart01.png" alt="..."></a>
</div>
<!--/底部结算导航-->
</body>
</html>
