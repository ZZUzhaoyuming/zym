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

<form method="post" action="${zym}/user/modify">
    <input type="text" name="id"  value="${requestScope.user.id}" readonly/>
    <input type="text" name="name"  value="${requestScope.user.name}" readonly/>
    <input type="text" name="registdate"  value="<f:formatDate value="${requestScope.user.registdate}" pattern="yyyy-MM-dd"/>" readonly/>
    <input type="text" name="bir"  value="<f:formatDate value="${requestScope.user.bir}" pattern="yyyy-MM-dd"/>" />
    <input type="submit">
</form>

</body>
</html>