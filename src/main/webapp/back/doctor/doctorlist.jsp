<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<script type="text/javascript">



    $(function(){
        $("#doctor").datagrid({
            url:'/his_zym/doctor/queryAll',
            columns:[[

                {title:'医生ID',field:'id',width:200,align:'center',
                    formatter:function(value,row,index){
                        return "<a onclick=\"queryPatients('"+value+"')\">"+value+"</a>"
                    }
                },
                {title:"医生姓名",field:"doctorname",width:300,align:'center'},
                {title:"年龄",field:"age",width:200,align:'center'},
                {title:"部门",field:"department",width:200,align:'center'},
                {title:"职务",field:"position",width:100,align:'center'},
                {title:"手机号",field:"phone",width:200,align:'center'},
                {title:"简介",field:"personalprofile",width:200,align:'center'},
                {title:"地址",field:"doctoraddress",width:200,align:'center'},
                {title:"状态",field:"status",width:200,align:'center'},
                {title:"操作",field:"option",width:300,align:'center',
                    formatter: function(value,row,index){
                        return "<a class='del' data-options=\"plain:true,iconCls:'icon-20130408025545236_easyicon_net_30'\" onclick=\"deleteDoctor('" + row.id + "')\">[删除]</a>&nbsp;&nbsp;&nbsp;<a class='update'  data-options=\"plain:true,iconCls:'icon-edit',\" onclick=\"updateDoctorDialog('" + row.id + "')\">[修改]</classa>";
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

    function deleteDoctor(id){

        $.messager.confirm('提示','是否确定要删除？',function(r){

            //确认删除
            if(r){

                $.getJSON("/his_zym/doctor/removeDoctor",{"id":id},function(result){
                    $.messager.show({
                        title:'提示',
                        msg:result.msg,
                    });
                    $('#doctor').datagrid('reload');
                });

                $('#doctor').datagrid('reload');
            }

        });


    }


    //对应的病人=====================================================================
    function queryPatients(value){
        $("#main").tabs('add',{
            title:'病人信息',
            href:'/his_zym/back/patient/checkpatient.jsp?id='+value,

            tools:[{
                iconCls:'icon-man',
                handler:function(){
                    $("#main").tabs('getSelected').panel('refresh');
                }
            }]
        })
    }


    function updateDoctorDialog(id){

        $("#updateDoctorDia").dialog({

            title:'修改医生信息',
            width:400,
            height:600,
            href:'/his_zym/back/doctor/updateDoctor.jsp?id='+id,
            buttons:[{
                text:'修改医生信息',
                iconCls:'icon-add',
                handler:updateDoctor,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        });

    }


    function updateDoctor(){

        $("#doctorupdateInput").form('submit',{

            url:'/his_zym/doctor/modifyDoctor',
            onSubmit:function(){

                return $("#doctorupdateInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:result.msg,
                });
                $("#updateDoctorDia").dialog('close',true);
                $("#doctor").datagrid('reload');
            }
        });


    }


    function addDoctorDialog(){

        $("#addDoctorDia").dialog({

            title:'添加医生信息',
            width:400,
            height:600,
            href:'/his_zym/back/doctor/addDoctor.jsp',
            buttons:[{
                text:'增加医生',
                iconCls:'icon-add',
                handler:addDoctor,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        })
    }

    function addDoctor(){
        $("#doctorAddInput").form('submit',{

            url:'/his_zym/doctor/addDoctor',
            onSubmit:function(){

                return $("#doctorAddInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:'添加成功',
                });
                $("#addDoctorDia").dialog('close',true);
                $("#doctor").datagrid('reload');
            }

        });

    }


</script>

<div id="doctor"></div>

<div id="tb1">
    <a class="easyui-linkbutton" onclick="addDoctorDialog()" data-options="iconCls:'icon-add',plain:true">添加</a>
    <%--搜索框--%>

</div>

<div id="addDoctorDia"></div>
<div id="updateDoctorDia"></div>