<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>独墅湖高教区课程资源共享平台</title>

    <link rel="stylesheet" href="css/k-style.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/h-school.css">
    <link rel="stylesheet" href="layui/css/layui.css"/>
    <link rel="stylesheet" href="css/global.css">
    <script src="layui/layui.js"></script>
    <script src="js/html5shiv.min.js" type="text/javascript"></script>
    <script src="js/selectivizr.min.js" type="text/javascript"></script>

</head>
<body>

<div class="layui-carousel" id="bg-item">
    <div class="layui-header title">
        <div class="layui-container">
            <div class="layui-logo layui-pull-left">
                <img src="img/frontpagelogo.png" width="360px">
            </div>

            <div class="personalCenter layui-pull-right">
                <a class="operation"><a class="operation" href="index" target="_blank" style="color:#fff"><i class="layui-icon layui-icon-read"></i>&nbsp;回首页</a></a>
            </div>

            <div class="personalCenter layui-pull-right">
                <a class="operation"><a class="operation" href="school" target="_blank" style="color:#fff"><i class="layui-icon layui-icon-read"></i>&nbsp;院校</a></a>
            </div>
        </div>
    </div>
</div>

<br>
<br>
<br>


<div class="layui-container layui-pull-center" style="margin-bottom: 30px;width: 1300px;">
    <br>
    <br>
    <br>
    <br>

    <fieldset class="layui-elem-field ">

        <legend>
            <p  style="font-size: 25px;">中国科学技术大学</p>
        </legend>

        <div class="layui-field-box " style="background: rgba(255,255,255,1);">
            <br>
            <div class="img" align="center">
                <img src="img/zkdxiaohui.png"  >
            </div>

            <br>
            <p><p style="font-size: 16px;line-height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${schoolname.schDes}</p></p>
            <br>
            <br>
        </div>

    </fieldset>

    <br>
    <br>
    <br>
    <fieldset class="layui-elem-field ">

        <legend>
            <p  style="font-size: 25px;">开放课程</p>
        </legend>

        <div class="layui-field-box layui-bg-gray"  >

            <div class="course wCenter">
                <div class="detail">
                    <ul>
                        <c:forEach items="${courses}" var="c">
                            <li>
                                <div class="img">
                                    <img src="${c.courseImage}" alt="">

                                </div>
                                <div class="status">
                                    <p><span>${c.courseName}</span><span class="icon"></span></p>
                                    <p><span class="planing">正在开课</span><span><img src="" alt="">${c.courseSelectnum}</span></p>
                                </div>
                                <div class="person">
                                    <span><img src=""alt=""></span>
                                    <span>${c.schName}</span>
                                </div>
                                </a>
                            </li>
                        </c:forEach>

                    </ul>

                </div>
            </div>
        </div>

    </fieldset>
</div>


<div class="parterner wCenter" >


    <div class="footer">
        <div class="wCenter">
            <div class="left">
                <h5 class="black_color"><img src="../static/image/logo_small2@2x.png" alt="">独墅湖高教区课程资源共享平台</h5>
                <p>课程内容版权均归课程内容提供者(机构)所有</p>
            </div>
            <div class="center">
                <dl>
                    <dt><a class="black_color" href="Index/notice.htm">-平台介绍</a></dt>
                    <dt><a class="black_color" href="Index/help.htm">-帮助中心</a></dt>
                    <dt><a class="black_color" href="Index/concat.htm">-联系我们</a></dt>
                    <!-- <dt><a class="black_color" href="http://">-关注我们</a></dt> -->
                </dl>
            </div>
            <div class="right">
                <p class="black_color">主管单位：东南苏州研究院</p>
                <p class="black_color">主办单位：独墅湖高教区课程资源共享平台管理中心</p>
                <p class="black_color">承办单位：Young项目组</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>