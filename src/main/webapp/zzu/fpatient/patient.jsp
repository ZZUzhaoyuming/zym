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

                    欢迎：${sessionScope.patient.patientname} <a href="${zym}/zzu/index.jsp">退出</a>
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
               病人信息展示
            </h1>
            <table class="table" style="font-size: 20px; table-layout:fixed;">
                <tr class="table_header row2">
                    <td rowspan="2">
                        <img src="/his_zym/back/statics/pic/${ requestScope.patient.picture }" alt="照片">

                    </td>
                    <td>
                        ID
                    </td>
                    <td>
                        ${requestScope.patient.id}
                    </td>
                    <td>
                        姓名
                    </td>
                    <td>
                        ${requestScope.patient.patientname}
                    </td>
                    <td>
                        性别
                    </td>
                    <td>
                        ${requestScope.patient.sex}
                    </td>
                </tr>
                <tr class="table_header row2">
                    <td>
                        年龄
                    </td>
                    <td>
                        ${requestScope.patient.age}
                    </td>
                    <td>
                        病历
                    </td>
                    <td>
                        ${requestScope.patient.medicalrecordsid}
                    </td>
                    <td>
                        职业
                    </td>
                    <td>
                        ${requestScope.patient.professional}
                    </td>
                </tr>
                <tr class="table_header row2">
                    <td>
                        公司
                    </td>
                    <td colspan="2">
                        ${requestScope.patient.workarea}
                    </td>
                    <td>
                        医生
                    </td>
                    <td>
                        ${requestScope.patient.doctorid}
                    </td>
                    <td>
                        民族
                    </td>
                    <td>
                        ${requestScope.patient.national}
                    </td>
                </tr>
                <tr class="table_header row2">
                    <td>
                        地址
                    </td>
                    <td colspan="6">
                        ${requestScope.patient.address}
                    </td>
                </tr>
                <tr class="table_header row2">
                    <td>
                        床号
                    </td>
                    <td colspan="2">
                        ${requestScope.patient.bedid}
                    </td>
                    <td>
                        操作
                    </td>
                    <td colspan="3">
                        <a href="${zym}/zzu/fpatient/allBed.jsp">病床</a>&nbsp;
                        <a href="${zym}/zzu/fpatient/allDoctor.jsp">医生</a>&nbsp;
                        <a href="${zym}/medicalRecords/queryByID?id=${requestScope.patient.medicalrecordsid}">查看病历</a>&nbsp;

                    </td>
                </tr>

            </table>

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
