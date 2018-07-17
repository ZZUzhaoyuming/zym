<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="/zzu/util.jsp"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${zym}/zzu/css/style.css" />
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

                    管理员：${sessionScope.user.name}<a href="${zym}/login/index.jsp">退出</a>
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="${zym}/zzu/main.jsp">返回主界面</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1 style="text-align: center;font-size: 26px">
                医院信息管理系统
            </h1>

            <div id="aaa" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/patient/queryAll">病人信息管理</a>
            </div>
            <div id="bbb" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/doctor/queryAll">医生信息管理</a>
            </div>
            <div id="ccc" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/medicalRecords/queryAll">病历信息管理</a>
            </div>
            <div id="ddd" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/attendance/queryAll">考勤信息管理</a>
            </div>
            <div id="eee" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/security/queryAll">安保信息管理</a>
            </div>
            <div id="fff" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/recruitment/queryAll">招聘信息管理</a>
            </div>
            <div id="ggg" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/bed/queryAll">病床信息管理</a>
            </div>
            <div id="hhh" style="color: #0d7ef5;font-family: 'Comic Sans MS';font-size: 23px;text-align: center">
                <a href="${zym}/patient/queryMany">病情分析</a>
            </div>

        </div>
    </div>
    <div id="footer">
        <div id="footer_bg" style="text-align: center">
            郑州大学附属医院
        </div>
    </div>
</div>
</body>
</html>
