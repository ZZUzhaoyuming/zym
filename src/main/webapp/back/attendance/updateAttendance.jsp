<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<script type="text/javascript">
    $(function(){

        $('#attendanceupdateInput').form('load','/his_zym/attendance/queryOne?id=${param.id}');

    });

</script>

<div style="text-align: center; margin-top:20px">

    <form method="post" id="attendanceupdateInput" enctype="multipart/form-data">
        <div>
            <%--<div style="float: left;border:1px;width:30%;height:50%;background: red">


            </div>
            <div style="float: left;border:1px;width:70%;height:100%;background:gold">
                <input class="easyui-textbox">

            </div>--%>
            <input type="hidden" name="id"/>
                <div style="margin-top: 4px">
                    医生:<input name="doctorid" class="easyui-textbox" data-options="width:200"><br/>

                </div>

                <div style="margin-top: 4px">
                    应出勤&nbsp;&nbsp;:<input name="attendance" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    未出勤:<input name="noattendance" class="easyui-textbox" data-options="width:200"><br/>

                </div>

                <div style="margin-top: 4px">
                    出勤率：<input name="attendanceresults" class="easyui-textbox" data-options="width:200"><br/>

                </div>
        </div>


    </form>

</div>
