<%@ page pageEncoding="UTF-8" contentType="text/html; UTF-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="user" >
<h1 style="text-align: center">医院信息管理</h1>



        <a id="login" class="easyui-linkbutton" data-options="plain:true">
            欢迎您： ${sessionScope.user.name}
        </a>
        <a class="easyui-linkbutton" data-options="plain:true" onclick="loginout()">
            退出
        </a>



</div>



