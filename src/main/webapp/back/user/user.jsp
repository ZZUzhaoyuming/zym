<%@ page pageEncoding="UTF-8" contentType="text/html; UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/icon.css">
<script type="text/javascript" src="${zym}/back/statics/easyui/js/jquery.min.js"></script>
<script type="text/javascript" src="${zym}/back/statics/easyui/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${zym}/back/statics/easyui/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${zym}/back/statics/easyui/js/jquery-validater.js"></script>
<script>

</script>
<body>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>acountnumber</td>
        <td>password</td>
        <td>photo</td>
        <td>inreadcount</td>
        <td>outreadcount</td>
        <td>userstatus</td>
        <td>registdate</td>
        <td>rackid</td>
        <td>bir</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${requestScope.users}" var="u">
    <tr><td>${u.id}</td>
        <td>${u.name}</td>
        <td><f:formatDate value="${u.registdate}" pattern="yyyy-MM-dd"/></td>

        <td><f:formatDate value="${u.bir}" pattern="yyyy-MM-dd"/></td>

        <td><a href="${zym}/user/remove?id=${u.id}">删除</a><a href="${zym}/user/queryOne?id=${u.id}">修改</a></td>
    </tr>
    </c:forEach>
</table>

</body>
</html>