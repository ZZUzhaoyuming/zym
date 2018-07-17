
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

                    管理员：${sessionScope.user.name} <a href="${zym}/login/index.jsp">退出</a>
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
            <h1>
                安保信息管理
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
                        手机
                    </td>
                    <td>
                        地址
                    </td>
                    <td>
                        区域
                    </td>
                    <td>
                        照片
                    </td>

                    <td>
                        操作
                    </td>
                </tr>
                <c:forEach items="${requestScope.list}" var="p" varStatus="sta">
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
                                ${p.securityname}
                        </td>
                        <td>
                                ${p.sex}
                        </td>
                        <td>
                                ${p.age}
                        </td>
                        <td>
                                ${p.phone}
                        </td>
                        <td>
                                ${p.securityaddress}
                        </td>
                        <td>
                                ${p.area}
                        </td>

                        <td>
                                ${p.securitypicture}
                        </td>

                        <td>

                            <a href="${zym}/security/removeSecurity?id=${p.id}">删除</a>&nbsp;
                            <a href="${zym}/security/queryOne?id=${p.id}">修改</a>&nbsp;
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <p>
                <input type="button" class="button" value="添加安保信息" onclick="location.href='${zym}/zzu/security/addSecurity.jsp'"/>
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
