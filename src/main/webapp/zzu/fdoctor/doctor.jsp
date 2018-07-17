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



    </script>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader" style="font-size: 16px">
                <p>

                    欢迎：${sessionScope.doctor.doctorname} <a href="${zym}/zzu/index.jsp">退出</a>
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                   医生管理界面
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                医生个人信息
            </h1>
            <table class="table" style="font-size: 20px">
                <tr class="table_header">
                    <td>
                        ID
                    </td>
                    <td>
                        姓名
                    </td>
                    <td>
                        年龄
                    </td>
                    <td>
                        部门
                    </td>
                    <td>
                        职位
                    </td>
                    <td>
                        地址
                    </td>
                    <td>
                        手机
                    </td>
                    <td>
                        个人简介
                    </td>


                    <td>
                        操作
                    </td>
                </tr>

                    <%--获取遍历状态 varStatus 用来获取遍历的状态--%>
                    <tr
                            <c:if test="${sta.count%2==0}">
                                class="row1"
                            </c:if>
                            <c:if test="${sta.count%2!=0}">
                                class="row2"
                            </c:if>
                    >
                        <td>
                                ${requestScope.doctor.id}
                        </td>
                        <td>
                                ${requestScope.doctor.doctorname}
                        </td>
                        <td>
                                ${requestScope.doctor.age}
                        </td>
                        <td>
                                ${requestScope.doctor.department}
                        </td>
                        <td>
                                ${requestScope.doctor.position}
                        </td>
                        <td>
                                ${requestScope.doctor.doctoraddress}
                        </td>
                        <td>
                                ${requestScope.doctor.phone}
                        </td>
                        <td>
                                ${requestScope.doctor.personalprofile}
                        </td>

                        <td>
                            <a href="${zym}/zzu/fdoctor/addPatient.jsp">添加病人</a>&nbsp;
                        </td>
                    </tr>
            </table>
            <p>
                <input type="button" class="button" value="查看所有病人" onclick="location.href='${zym}/doctor/queryAllPatient?name=${requestScope.doctor.doctorname}'"/>
                <br/>


            </p>
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
