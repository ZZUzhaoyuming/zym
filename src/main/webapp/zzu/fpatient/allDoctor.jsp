<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="../util.jsp"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${zym}/zzu/css/style.css" />
    <script type="text/javascript" src="${zym}/zzu/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $.ajax({

            dataType: "json", //返回值的类型 text为string型
            type: 'post',  //发送请求的方法(get)
            url: '${zym}/doctor/queryAlll',//发送请求的地址
            success: function (data) {//发送成功时的回调函数
                //      console.log(data);
                for (var i = 0; i <= data.length; i++) {

                    $("#id").append("<option value= "+data[i].id+" style='font-size:20px;'>" + data[i].doctorname + "</option>");
                }
            }
        })


    </script>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader" style="font-size: 16px">
                <p>

                    <%--管理员：${sessionScope.user.name} <a href="${zym}/index.jsp">退出</a>--%>
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    预约医生
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
               预约医生
            </h1>

            <div style="margin:0 auto;width: 150px;height: 80px;">

                <form action="${zym}/patient/buyDoctor" method="post">
                    <select name="id" id="id" style="width:150px;height:30px;">
                        <option style="font-size: 20px">请选择</option>
                    </select><br/>
                    <input type="submit" class="button" value="确认预约" style="width:150px; font-size: 20px;"/>
                </form>

            </div>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg" style="text-align: center;font-size: 18px">
            医院信息管理系统
        </div>
    </div>
</div>
</body>
</html>
