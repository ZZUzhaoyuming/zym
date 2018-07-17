<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<script type="text/javascript">

    $.fn.datebox.defaults.formatter = function(date){
        var y = date.getFullYear();
        var m = date.getMonth()+1;
        var d = date.getDate();
        return y+'/'+m+'/'+d;
    }
    $.fn.datebox.defaults.parser = function(s){
        if (!s) return new Date();
        var ss = s.split('/');
        var y = parseInt(ss[0],10);
        var m = parseInt(ss[1],10);
        var d = parseInt(ss[2],10);
        if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
            return new Date(y,m-1,d);
        } else {
            return new Date();
        }
    };

    $(function(){
        $("#patients").datagrid({
            url:'/his_zym/patient/queryAll',
            columns:[[
                {title:"病人ID",field:"id",width:100,align:'center'},
                {title:"病人姓名",field:"patientname",width:100,align:'center'},
                {title:'病例ID',field:'medicalrecordsid',width:200,align:'center',
                    formatter:function(value,row,index){
                        return "<a onclick=\"qChapter('"+value+"')\">"+value+"</a>"
                    }
                },
                {title:"年龄",field:"age",width:200,align:'center'},
                {title:"性别",field:"sex",width:200,align:'center'},
                {title:"地址",field:"address",width:00,align:'center'},
                {title:"照片",field:"picture",width:200,align:'center',
                    formatter:function(value,row,index){

                        return "<img style='width: 50px' src='"+"/his_zym/back/statics/pic/"+value+"'/>"
                    }
                },
                {title:"医生",field:"doctorid",width:200,align:'center'},
                {title:"籍贯",field:"nativeplace",width:200,align:'center'},
                {title:"病床",field:"bedid",width:200,align:'center'},
                {title:"操作",field:"option",width:300,align:'center',
                    formatter: function(value,row,index){
                        return "<a class='del' data-options=\"plain:true,iconCls:'icon-20130408025545236_easyicon_net_30'\" onclick=\"deletePatient('" + row.id + "')\">[删除]</a>&nbsp;&nbsp;&nbsp;<a class='update'  data-options=\"plain:true,iconCls:'icon-edit',\" onclick=\"updatePatientDialog('" + row.id + "')\">[修改]</classa>";
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

    function deletePatient(id){

        $.messager.confirm('提示','是否确定要删除？',function(r){

            //确认删除
            if(r){

                $.getJSON("/his_zym/patient/removePatient",{"id":id},function(result){
                    $.messager.show({
                        title:'提示',
                        msg:result.msg,
                    });
                    $('#patients').datagrid('reload');
                });

                $('#patients').datagrid('reload');
            }
        });
    }
    //对应的病历=====================================================================
    function qChapter(value){
        $("#main").tabs('add',{
            title:'病历信息',
            href:'/his_zym/back/medicalrecords/querymedicalrecords.jsp?id='+value,
            tools:[{
                iconCls:'icon-man',
                handler:function(){
                    $("#main").tabs('getSelected').panel('refresh');
                }
            }]
        })
    }



    function updatePatientDialog(id){

        $("#updatePatientDia").dialog({

            title:'修改病人信息',
            width:400,
            height:600,
            href:'/his_zym/back/patient/updatePatient.jsp?id='+id,
            buttons:[{
                text:'修改病人信息',
                iconCls:'icon-add',
                handler:updatePatient,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        });

    }


    function updatePatient(){

        $("#patientupdateInput").form('submit',{

            url:'/his_zym/patient/modifyPatient',
            onSubmit:function(){

                return $("#patientupdateInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:result.msg,
                });
                $("#updatePatientDia").dialog('close',true);
                $("#patients").datagrid('reload');
            }
        });


    }


    function addPatientDialog(){

        $("#addPatientDia").dialog({

            title:'添加病人信息',
            width:400,
            height:600,
            href:'/his_zym/back/patient/addPatient.jsp',
            buttons:[{
                text:'增加病人',
                iconCls:'icon-add',
                handler:addPatient,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        })
    }

    function addPatient(){
        $("#patientAddInput").form('submit',{

            url:'/his_zym/patient/addPatient',
            onSubmit:function(){

                return $("#patientAddInput").form('validate');

            },
            success:function(data){

                $.messager.show({

                    title:'提示消息',
                    msg:'添加成功',
                });
                $("#addPatientDia").dialog('close',true);
                $("#patients").datagrid('reload');
            }

        });



    }



</script>

<div id="patients"></div>

<div id="tb1">
    <a class="easyui-linkbutton" onclick="addPatientDialog()" data-options="iconCls:'icon-add',plain:true">添加</a>

</div>

<div id="addPatientDia"></div>
<div id="updatePatientDia"></div>