<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<script type="text/javascript">


    $(function(){
        $('#medicalupdateInput').form('load','/his_zym/medicalRecords/queryOne?id=${param.id}');

    });

</script>

<div style="text-align: center; margin-top:20px">

    <form method="post" id="medicalupdateInput" enctype="multipart/form-data">
        <div>
            <%--<div style="float: left;border:1px;width:30%;height:50%;background: red">


            </div>
            <div style="float: left;border:1px;width:70%;height:100%;background:gold">
                <input class="easyui-textbox">

            </div>--%>
                <div style="margin-top: 4px">
                    编号:<input name="id" class="easyui-textbox" data-options="width:200" readonly="readonly"><br/>

                </div>
                <div style="margin-top: 4px">
                    病历名:<input name="medicalrecordsname" class="easyui-textbox" data-options="width:200"><br/>

                </div>


                <div style="margin-top: 4px">
                    主诉:<input name="cc" class="easyui-textbox" data-options="width:200"><br/>

                </div>

                <div style="margin-top: 4px">
                    现病史：<input name="hpi" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    既往史：<input name="pmh" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    个人史：<input name="ph" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    婚姻史：<input name="eh" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    家族史：<input name="fh" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    体格检查：<input name="pc" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    辅助检查：<input name="ae" class="easyui-textbox" data-options="width:200"><br/>

                </div>

        </div>


    </form>

</div>
