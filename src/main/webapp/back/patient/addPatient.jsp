<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<script type="text/javascript">


</script>

<div style="text-align: center; margin-top:20px">

    <form method="post" id="patientAddInput" enctype="multipart/form-data">
        <div>
            <%--<div style="float: left;border:1px;width:30%;height:50%;background: red">


            </div>
            <div style="float: left;border:1px;width:70%;height:100%;background:gold">
                <input class="easyui-textbox">

            </div>--%>
            <div style="margin-top: 4px">
                姓名:<input name="patientname" class="easyui-textbox" data-options="width:200"><br/>
            </div>

                <div style="margin-top: 4px">
                    性别&nbsp;&nbsp;:<input name="sex" class="easyui-textbox" data-options="width:200"><br/>

                </div>
                <div style="margin-top: 4px">
                    年龄:<input name="age" class="easyui-textbox" data-options="width:200"><br/>

                </div>
            <div style="margin-top: 4px">
                地址:<input name="address" class="easyui-textbox" data-options="width:200"><br/>

            </div>

            <div style="margin-top: 4px">
                籍贯：<input name="nativeplace" class="easyui-textbox" data-options="width:200"><br/>

            </div>
                <div style="margin-top: 4px">
                    照片:<input name="pic" class="easyui-filebox" data-options="width:200"><br/>

                </div>



        </div>


    </form>

</div>
