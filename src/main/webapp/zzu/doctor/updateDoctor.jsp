<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="../util.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>add Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="${zym}/zzu/css/style.css" />
    <script type="text/javascript" src="${zym}/zzu/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${zym}/zzu/statics/plugin/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader" style="font-size: 16px">
                <p>

                    管理员：${sessionScope.user.name} <a href="${zym}/login/index.jsp">退出</a>
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="${zym}/doctor/queryAll">返回</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                修改医生信息
            </h1>
            <form action="${zym}/doctor/modifyDoctor" method="post">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">

                    <tr>
                        <td valign="middle" align="right">
                            ID
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="id" value="${requestScope.p.id}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            姓名
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="doctorname" value="${requestScope.p.doctorname}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            年龄:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="age" value="${requestScope.p.age}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            部门:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="department" value="${requestScope.p.department}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            职位:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="position" value="${requestScope.p.position}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            地址:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="doctoraddress" value="${requestScope.p.doctoraddress}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            手机:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="phone" value="${requestScope.p.phone}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            个人简介:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="personalprofile" value="${requestScope.p.personalprofile}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            照片:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="doctorpicture" value="${requestScope.p.doctorpicture}"/>
                        </td>
                    </tr>


                    <tr>
                        <td valign="middle" align="right">
                            评价:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="evaluation" value="${requestScope.p.evaluation}"/>
                        </td>
                    </tr>



                </table>
                <p>
                    <input type="submit" class="button" value="添加" />
                </p>
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
