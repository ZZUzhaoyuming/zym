
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="../zzu/util.jsp"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link rel="stylesheet" type="text/css" href="${zym}/zzu/css/style.css" />
    <link href="${zym}/zzu/css/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{
            background:'${zym}/zzu/images/timg.jpg';
        }
    </style>
    <script type="text/javascript" src="${zym}/zzu/js/jquery-1.8.3.min.js"></script>

</head>
    <body scroll=no>
    <img alt="" src="${zym}/zzu/images/timg.jpg" id="img">

    <div class="login_box">
            <%--<div class="login_l_img"><img src="${zym}/zzu/images/timg.jpg" /></div>--%>
            <div class="login">
                <div class="login_logo"><a href="#"><img src="${zym}/zzu/images/login_logo.png" /></a></div>
                <div class="login_name">
                    <p>前台登录</p>
                </div>
                <form action="${zym}/user/login" method="post">
                    <input name="id" type="text"  value="用户名" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名'}">
                    <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span>
                    <input name="password" type="password" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/>
                    <input value="登录" style="width:100%;" type="submit">
                </form>
                <a href="/his_zym/back/recruitment/addRecruitmentss.jsp"  style="float:right;font-size: 20px;">简历投递</a>
            </div>

            <div class="copyright">郑州大学附属医院 版权所有©2014-2018 技术支持电话：18595416103</div>
        </div>
    </body>
</html>
