<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<script type="text/javascript">
    $(function(){


        $('#bedupdateInput').form('load','/his_zym/bed/queryOne?id=${param.id}');

    });

</script>

<div style="text-align: center; margin-top:20px">

    <form method="post" id="bedupdateInput" enctype="multipart/form-data">
        <div>
            <%--<div style="float: left;border:1px;width:30%;height:50%;background: red">


            </div>
            <div style="float: left;border:1px;width:70%;height:100%;background:gold">
                <input class="easyui-textbox">

            </div>--%>
            <input type="hidden" name="id"/>
            <div style="margin-top: 4px">
                区域:<input name="bedarea" class="easyui-textbox" data-options="width:200"><br/>

            </div>
            <div style="margin-top: 4px">
                病床编号:<input name="bedid" class="easyui-textbox" data-options="width:200"><br/>

            </div>

            <div style="margin-top: 4px">
                状态：<input name="status" class="easyui-textbox" data-options="width:200"><br/>

            </div>

        </div>


    </form>

</div>
