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

                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
               病历信息
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
                        时间
                    </td>
                    <td>
                        主诉
                    </td>
                    <td>
                        现病史
                    </td>
                    <td>
                        既往史
                    </td>
                    <td>
                        个人史
                    </td>
                    <td>
                        婚姻史
                    </td>

                    <td>
                        家族史
                    </td>
                    <td>
                        体格检查
                    </td>
                    <td>
                        辅助检查1
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
                                ${requestScope.p.id}
                        </td>
                        <td>
                                ${requestScope.p.medicalrecordsname}
                        </td>
                        <td>
                            <fmt:formatDate value="${requestScope.p.generatetime}" pattern="yyyy-MM-dd"/>

                        </td>
                        <td>
                                ${requestScope.p.cc}
                        </td>
                        <td>
                                ${requestScope.p.hpi}
                        </td>
                        <td>
                                ${requestScope.p.pmh}
                        </td>
                        <td>
                                ${requestScope.p.ph}
                        </td>
                        <td>
                                ${requestScope.p.eh}
                        </td>
                        <td>
                                ${requestScope.p.fh}
                        </td>
                        <td>
                                ${requestScope.p.pc}
                        </td>
                        <td>
                                ${requestScope.p.ae}
                        </td>


                    </tr>

            </table>
            <p>

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
