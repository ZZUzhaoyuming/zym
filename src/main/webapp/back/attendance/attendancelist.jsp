<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<script type="text/javascript">



    $(function(){
        $("#attendance").datagrid({
            url:'/his_zym/attendance/queryAll',
            columns:[[
                {title:"ID",field:"id",width:300,align:'center'},
                {title:'医生',field:'doctorid',width:200,align:'center',
                    formatter:function(value,row,index){
                        return "<a onclick=\"qChapter('"+row.id+"')\">"+value+"</a>"
                    }
                },
                {title:"应出勤",field:"attendance",width:200,align:'center'},
                {title:"未出勤",field:"noattendance",width:200,align:'center'},
                {title:"出勤率",field:"attendanceresults",width:100,align:'center'},
                {title:"操作",field:"option",width:300,align:'center',
                    formatter: function(value,row,index){
                        return "<a class='del' data-options=\"plain:true,iconCls:'icon-20130408025545236_easyicon_net_30'\" onclick=\"deleteAttendance('" + row.id + "')\">[删除]</a>&nbsp;&nbsp;&nbsp;<a class='update'  data-options=\"plain:true,iconCls:'icon-edit',\" onclick=\"updateAttendanceDialog('" + row.id + "')\">[修改]</classa>";
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

    function deleteAttendance(id){

        $.messager.confirm('提示','是否确定要删除？',function(r){

            //确认删除
            if(r){

                $.getJSON("/his_zym/attendance/removeAttendance",{"id":id},function(result){
                    $.messager.show({
                        title:'提示',
                        msg:result.msg,
                    });
                    $('#attendance').datagrid('reload');
                });

                $('#attendance').datagrid('reload');
            }

        });


    }


    function updateAttendanceDialog(id){

        $("#updateAttendanceDia").dialog({

            title:'修改考勤信息',
            width:400,
            height:600,
            href:'/his_zym/back/attendance/updateAttendance.jsp?id='+id,
            buttons:[{
                text:'修改考勤信息',
                iconCls:'icon-add',
                handler:updateAttendance,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        });

    }


    function updateAttendance(){

        $("#attendanceupdateInput").form('submit',{

            url:'/his_zym/attendance/modifyAttendance',
            onSubmit:function(){

                return $("#attendacneupdateInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:result.msg,
                });
                $("#updateAttendanceDia").dialog('close',true);
                $("#attendance").datagrid('reload');
            }
        });


    }


    function addAttendanceDialog(){

        $("#addAttendanceDia").dialog({

            title:'添加考勤信息',
            width:400,
            height:600,
            href:'/his_zym/back/attendance/addAttendance.jsp',
            buttons:[{
                text:'增加考勤',
                iconCls:'icon-add',
                handler:addAttendance,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        })
    }

    function addAttendance(){
        $("#attendanceAddInput").form('submit',{

            url:'/his_zym/attendance/importFile',
            onSubmit:function(){

                return $("#attendanceAddInput").form('validate');

            },
            success:function(data){

                $.messager.show({

                    title:'提示消息',
                    msg:'添加成功',
                });
                $("#addAttendanceDia").dialog('close',true);
                $("#attendance").datagrid('reload');
            }

        });



    }

    function qq(){}

</script>

<div id="attendance"></div>

<div id="tb1">
    <a class="easyui-linkbutton" onclick="addAttendanceDialog()" data-options="iconCls:'icon-add',plain:true">添加</a>
    <%--搜索框--%>

</div>

<div id="addAttendanceDia"></div>
<div id="updateAttendanceDia"></div>