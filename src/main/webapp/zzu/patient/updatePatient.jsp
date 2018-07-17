<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="../util.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>add Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${zym}/zzu/css/style.css" />
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
                    <a href="${zym}/patient/queryAll">返回</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                修改
            </h1>
            <form action="${zym}/patient/modifyPatient" method="post">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">

                    <tr>
                        <td valign="middle" align="right">
                            ID
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="id" value="${requestScope.p.id}" />
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            姓名
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="patientname" value="${requestScope.p.patientname}"/>
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
                            性别:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="sex" value="${requestScope.p.sex}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            地址:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="address" value="${requestScope.p.address}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            病历:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="medicalrecordsid" value="${requestScope.p.medicalrecordsid}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            医生:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="doctorid" value="${requestScope.p.doctorid}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            照片:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="picture" value="${requestScope.p.picture}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            职业:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="professional" value="${requestScope.p.professional}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            公司:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="workarea" value="${requestScope.p.workarea}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            婚姻:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="marriage" value="${requestScope.p.marriage}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            籍贯:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="nativeplace" value="${requestScope.p.nativeplace}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            民族:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="national" value="${requestScope.p.national}"/>
                        </td>
                    </tr>

                </table>
                <p>
                <input type="submit" class="button" value="确认修改" />
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

