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


                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    医生的病人
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
               病人信息
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
                        性别
                    </td>
                    <td>
                        年龄
                    </td>
                    <td>
                        地址
                    </td>
                    <td>
                        病历
                    </td>
                    <td>
                        医生
                    </td>
                    <td>
                        职业
                    </td>

                    <td>
                        公司
                    </td>
                    <td>
                        民族
                    </td>
                    <td>
                        操作
                    </td>
                </tr>
                <c:forEach items="${requestScope.patients}" var="p" varStatus="sta">
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
                                ${p.id}
                        </td>
                        <td>
                                ${p.patientname}
                        </td>
                        <td>
                                ${p.sex}
                        </td>
                        <td>
                                ${p.age}
                        </td>
                        <td>
                                ${p.address}
                        </td>
                        <td>
                                ${p.medicalrecordsid}
                        </td>
                        <td>
                                ${p.doctorid}
                        </td>
                        <td>
                                ${p.professional}
                        </td>
                        <td>
                                ${p.workarea}
                        </td>
                        <td>
                                ${p.national}
                        </td>

                        <td>

                            <a href="${zym}/patient/queryOnePatient?id=${p.id}">添加病历</a>&nbsp;
                            <a href="${zym}/medicalRecords/queryOneById?id=${p.medicalrecordsid}">查看病历</a>&nbsp;
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <p>
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
