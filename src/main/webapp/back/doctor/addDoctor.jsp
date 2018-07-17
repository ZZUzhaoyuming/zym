<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<script type="text/javascript">


</script>

<div style="text-align: center; margin-top:20px">

    <form method="post" id="doctorAddInput" enctype="multipart/form-data">
        <div>
            <%--<div style="float: left;border:1px;width:30%;height:50%;background: red">


            </div>
            <div style="float: left;border:1px;width:70%;height:100%;background:gold">
                <input class="easyui-textbox">

            </div>--%>
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



        </div>


    </form>

</div>
