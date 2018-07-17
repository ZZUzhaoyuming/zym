<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<script type="text/javascript">
    $(function(){


        $('#doctorupdateInput').form('load','/his_zym/doctor/queryOne?id=${param.id}');

    });

</script>

<div style="text-align: center; margin-top:20px">

    <form method="post" id="doctorupdateInput" enctype="multipart/form-data">
        <%--<div>
            &lt;%&ndash;<div style="float: left;border:1px;width:30%;height:50%;background: red">


            </div>
            <div style="float: left;border:1px;width:70%;height:100%;background:gold">
                <input class="easyui-textbox">

            </div>&ndash;%&gt;
            <input type="hidden" name="id"/>
            <div style="margin-top: 4px">
                姓名:<input name="doctorname" class="easyui-textbox" data-options="width:200"><br/>

            </div>
            <div style="margin-top: 4px">
                性别:<input name="sex" class="easyui-textbox" data-options="width:200"><br/>

            </div>

            <div style="margin-top: 4px">
                部门：<input name="department" class="easyui-textbox" data-options="width:200"><br/>

            </div>
            &lt;%&ndash;<div style="margin-top: 4px">&ndash;%&gt;
                &lt;%&ndash;出版日期：<input name="publishdate" class="easyui-datebox" data-options="width:200"><br/>&ndash;%&gt;

            &lt;%&ndash;</div>&ndash;%&gt;
            <div style="margin-top: 4px">
                地址：<input name="doctoraddress" class="easyui-textbox" data-options="width:200"><br/>

            </div>


        </div>--%>
            <div style="margin-top: 4px">
                编号:<input name="id" class="easyui-textbox" data-options="width:200" readonly="readonly"><br/>
            </div>


        <div style="margin-top: 4px">
        姓名:<input name="doctorname" class="easyui-textbox" data-options="width:200"><br/>
    </div>


        <div style="margin-top: 4px">
            年龄:<input name="age" class="easyui-textbox" data-options="width:200"><br/>

        </div>
        <div style="margin-top: 4px">
            职务:<input name="position" class="easyui-textbox" data-options="width:200"><br/>

        </div>
        <div style="margin-top: 4px">
            地址:<input name="doctoraddress" class="easyui-textbox" data-options="width:200"><br/>

        </div>

        <div style="margin-top: 4px">
            部门:<input name="department" class="easyui-textbox" data-options="width:200"><br/>

        </div>
        <div style="margin-top: 4px">
            简介:<input name="personalprofile" class="easyui-textbox" data-options="width:200"><br/>

        </div>

        <div style="margin-top: 4px">
            手机:<input name="phone" class="easyui-textbox" data-options="width:200"><br/>

        </div>

        <div style="margin-top: 4px">
            状态:<input name="status" class="easyui-textbox" data-options="width:200" value="no" readonly="readonly"><br/>

        </div>

    </form>

</div>
