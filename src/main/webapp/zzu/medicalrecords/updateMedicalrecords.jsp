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
                    <a href="${zym}/medicalRecords/queryAll">返回</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                修改病历信息
            </h1>
            <form action="${zym}/medicalRecords/modifyMedicalRecords" method="post">
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
                            名称
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="medicalrecordsname" value="${requestScope.p.medicalrecordsname}"/>
                        </td>
                    </tr>


                    <tr>
                        <td valign="middle" align="right">
                            时间:
                        </td>
                        <td valign="middle" align="left">

                            <input  name="generatetime" value="<fmt:formatDate value='${requestScope.p.generatetime}' pattern='yyyy/MM/dd' />" >
                        </td>
                    </tr>


                    <tr>
                        <td valign="middle" align="right">
                            主诉:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="cc" value="${requestScope.p.cc}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            现病史:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="hpi" value="${requestScope.p.hpi}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            既往史:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="pmh" value="${requestScope.p.pmh}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            个人史:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="ph" value="${requestScope.p.ph}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            婚育史:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="eh" value="${requestScope.p.eh}"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            家族史:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="fh" value="${requestScope.p.fh}"/>
                        </td>
                    </tr>


                    <tr>
                        <td valign="middle" align="right">
                            体格检查:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="pc" value="${requestScope.p.pc}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            辅助检查:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="ae" value="${requestScope.p.ae}"/>
                        </td>
                    </tr>



                </table>
                <p>
                    <input type="submit" class="button" value="修改" />
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