<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="../util.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>add Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="../css/style.css" />
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
                    <a href="${zym}/attendance/queryAll">返回</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                添加考勤
            </h1>
            <form action="${zym}/attendance/addAttendance" method="post">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">

                    <tr>
                        <td valign="middle" align="right">
                            ID
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="id" />
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            姓名
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="doctorid" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            出勤:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="attendance" />
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            未出勤:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="noattendance" />
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            出勤率:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="attendanceresults" />
                        </td>
                    </tr>



                </table>
                <p>
                    <input type="submit" class="button" value="确认添加" />
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

