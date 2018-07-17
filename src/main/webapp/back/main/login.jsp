<%@ page pageEncoding="UTF-8" contentType="text/html; UTF-8" %>

<div  style="text-align: center; ">
    <form id="login" method="post">
        <div style="text-align: center;margin-top: 40px;">
            用户名 ：<input name="id" class="easyui-textbox" data-options="iconCls:'icon-man',iconAlign:'right',required:true" >
        </div>

        <div style="text-align: center;margin-top: 20px;">
            密&nbsp;&nbsp;&nbsp;码 ：<input name="password" class="easyui-passwordbox" data-options="iconAlign:'right',required:true">
        </div>
        <div style="text-align: center;margin-top: 20px;">
        <%--<input name="code" class="easyui-textbox"
               data-options="height:30,required:true,width:140,iconCls:'icon-filter',iconAlign:'right',prompt:'验证码...'" style="vertical-align:middle;"/>
        <span><img style="vertical-align:middle;" src="${zym}/manager/getImage"/></span>--%>
        </div>
    </form>
</div>