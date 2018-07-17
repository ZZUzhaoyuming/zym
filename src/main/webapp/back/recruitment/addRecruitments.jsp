<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="../util.jsp"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${zym}/zzu/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/black/easyui.css">
    <link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/IconExtension.css">
    <script type="text/javascript" src="${zym}/zzu/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader" style="font-size: 16px">
                <p>

                    <a href="${zym}/login/index.jsp">退出</a>
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    病人信息展示
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
               投递简历
            </h1>
            <form  action="/his_zym/recruitment/addRecruitment">
            <div style="margin-top: 4px">
                姓名:<input name="recruitmentname" class="easyui-textbox" data-options="width:200"><br/>

            </div>

            <div style="margin-top: 4px">
                年龄&nbsp;&nbsp;:<input name="age" class="easyui-textbox" data-options="width:200"><br/>

            </div>
            <div style="margin-top: 4px">
                手机:<input name="recruitmentphone" class="easyui-textbox" data-options="width:200"><br/>
            </div>

            <div style="margin-top: 4px">
                简历:<input name="mm" class="easyui-filebox" data-options="width:200"><br/>

            </div>


            <div style="margin-top: 4px">
                权限:<input name="power" class="easyui-textbox" data-options="width:200"><br/>

            </div>
            </form>
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
