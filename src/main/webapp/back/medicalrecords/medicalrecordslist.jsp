<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<script type="text/javascript">


    $(function(){
        $("#medical").datagrid({
            url:'/his_zym/medicalRecords/queryAll',
            columns:[[
                {title:"病历ID",field:"id",width:300,align:'center'},
                {title:'病历名字',field:'medicalrecordsname',width:200,align:'center'},
                {title:"日期",field:"generatetime",width:200,align:'center',formatter : function(value){

                        var date = new Date(value);
                        var year = date.getFullYear().toString();
                        var month = (date.getMonth() + 1);
                        var day = date.getDate().toString();
                        if (month < 10) {
                            month = "0" + month;
                        }
                        if (day < 10) {
                            day = "0" + day;
                        }
                        return year + "/" + month + "/" + day;

                    }},
                {title:"主诉",field:"cc",width:200,align:'center'},
                {title:"现病史",field:"hpi",width:100,align:'center'},
                {title:"既往史",field:"pmh",width:200,align:'center'},
                {title:"个人史",field:"ph",width:200,align:'center'},
                {title:"婚姻史",field:"eh",width:200,align:'center'},
                {title:"家族史",field:"fh",width:200,align:'center'},
                {title:"体格检查",field:"pc",width:200.,align:'center'},
                {title:"辅助检查",field:"ae",width:200.,align:'center'},
                {title:"操作",field:"option",width:300,align:'center',
                    formatter: function(value,row,index){
                        return "<a class='del' data-options=\"plain:true,iconCls:'icon-20130408025545236_easyicon_net_30'\" onclick=\"deleteMedical('" + row.id + "')\">[删除]</a>&nbsp;&nbsp;&nbsp;<a class='update'  data-options=\"plain:true,iconCls:'icon-edit',\" onclick=\"updateMedicalDialog('" + row.id + "')\">[修改]</classa>";
                    }
                }
            ]],
            onLoadSuccess:function(data){
                $(".del").linkbutton();
                $(".update").linkbutton();

            },
            nowrap:true,
            striped:true,//是否现显示斑马线
            autoRowHeight:true,
            fitColumns:true,
            fit:true,
            fitColumns:true,

            toolbar:'#tb1',

        });
    });

    function deleteMedical(id){

        $.messager.confirm('提示','是否确定要删除？',function(r){

            //确认删除
            if(r){

                $.getJSON("/his_zym/medicalRecords/removeMedicalRecords",{"id":id},function(result){
                    $.messager.show({
                        title:'提示',
                        msg:result.msg,
                    });
                    $('#medical').datagrid('reload');
                });

                $('#medical').datagrid('reload');
            }

        });


    }





    function updateMedicalDialog(id){

        $("#updateMedicalDia").dialog({

            title:'修改病历信息',
            width:400,
            height:600,
            href:'/his_zym/back/medicalrecords/updateMedicalrecords.jsp?id='+id,
            buttons:[{
                text:'修改病人信息',
                iconCls:'icon-add',
                handler:updateMedical,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        });

    }


    function updateMedical(){

        $("#medicalupdateInput").form('submit',{

            url:'/his_zym/medicalRecords/modifyMedicalRecords',
            onSubmit:function(){

                return $("#medicalupdateInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:result.msg,
                });
                $("#updateMedicalDia").dialog('close',true);
                $("#medical").datagrid('reload');
            }
        });


    }


    function addMedicalDialog(){

        $("#addMedicalDia").dialog({

            title:'添加病历信息',
            width:400,
            height:600,
            href:'/his_zym/back/medicalrecords/addMedicalrecords.jsp',
            buttons:[{
                text:'增加病历',
                iconCls:'icon-add',
                handler:addMedical,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        })
    }

    function addMedical(){
        $("#medicalAddInput").form('submit',{

            url:'/his_zym/medicalRecords/addMedicalRecords',
            onSubmit:function(){

                return $("#medicalAddInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:'添加成功',
                });
                $("#addMedicalDia").dialog('close',true);
                $("#medical").datagrid('reload');
            }

        });



    }

    function exportExcel(){
        $.messager.confirm('提示','是否要导出信息？',function(r){
            //确认导出
            if(r){
                $.getJSON("/his_zym/medicalRecords/export",function(result){
                    $.messager.show({
                        title:'提示',
                        msg:'导出成功',
                    });
                });
                $('#medical').datagrid('reload');
            }
        });

    }

</script>

<div id="medical"></div>

<div id="tb1">
    <a class="easyui-linkbutton" onclick="addMedicalDialog()" data-options="iconCls:'icon-add',plain:true">添加</a>
    <a class="easyui-linkbutton" onclick="exportExcel()" data-options="iconCls:'icon-filter',plain:true">一键导出</a>

</div>

<div id="addMedicalDia"></div>
<div id="updateMedicalDia"></div>