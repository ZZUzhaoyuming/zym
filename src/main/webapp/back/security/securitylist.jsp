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
        $("#security").datagrid({
            url:'/his_zym/security/queryAll',
            columns:[[
                {title:"保安ID",field:"id",width:300,align:'center'},
                {title:'姓名',field:'securityname',width:200,align:'center'},
                {title:"年龄",field:"age",width:200,align:'center'},
                {title:"性别",field:"sex",width:200,align:'center'},
                {title:"手机",field:"phone",width:100,align:'center'},
                {title:"区域",field:"area",width:200,align:'center'},
                {title:"地址",field:"securityaddress",width:200,align:'center'},
                {title:"操作",field:"option",width:300,align:'center',
                    formatter: function(value,row,index){
                        return "<a class='del' data-options=\"plain:true,iconCls:'icon-20130408025545236_easyicon_net_30'\" onclick=\"deleteSecurity('" + row.id + "')\">[删除]</a>&nbsp;&nbsp;&nbsp;<a class='update'  data-options=\"plain:true,iconCls:'icon-edit',\" onclick=\"updateSecurityDialog('" + row.id + "')\">[修改]</classa>";
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

    function deleteSecurity(id){

        $.messager.confirm('提示','是否确定要删除？',function(r){

            //确认删除
            if(r){

                $.getJSON("/his_zym/security/removeSecurity",{"id":id},function(result){
                    $.messager.show({
                        title:'提示',
                        msg:result.msg,
                    });
                    $('#security').datagrid('reload');
                });

                $('#security').datagrid('reload');
            }

        });


    }


    //对应的病历=====================================================================
    function qChapter(id){
        $("#main").tabs('add',{
            title:'病历信息',
            href:'/his_zym/back/chapter/chapterbook.jsp?id='+id,
            tools:[{
                iconCls:'icon-man',
                handler:function(){
                    $("#main").tabs('getSelected').panel('refresh');
                }
            }]
        })
    }






    function updateSecurityDialog(id){

        $("#updateSecurityDia").dialog({

            title:'修改安保信息',
            width:400,
            height:600,
            href:'/his_zym/back/security/updateSecurity.jsp?id='+id,
            buttons:[{
                text:'修改安保信息',
                iconCls:'icon-add',
                handler:updateSecurity,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        });

    }


    function updateSecurity(){

        $("#securityupdateInput").form('submit',{

            url:'/his_zym/security/modifySecurity',
            onSubmit:function(){

                return $("#securityupdateInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:result.msg,
                });
                $("#updateSecurityDia").dialog('close',true);
                $("#security").datagrid('reload');
            }
        });


    }


    function addSecurityDialog(){

        $("#addSecurityDia").dialog({

            title:'添加安保信息',
            width:400,
            height:600,
            href:'/his_zym/back/security/addSecurity.jsp',
            buttons:[{
                text:'增加保安',
                iconCls:'icon-add',
                handler:addSecurity,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        })
    }

    function addSecurity(){
        $("#securityAddInput").form('submit',{

            url:'/his_zym/security/addSecurity',
            onSubmit:function(){

                return $("#securityAddInput").form('validate');

            },
            success:function(data){

                $.messager.show({

                    title:'提示消息',
                    msg:'添加成功',
                });
                $("#addSecurityDia").dialog('close',true);
                $("#security").datagrid('reload');
            }

        });



    }

    function qq(){}

</script>

<div id="security"></div>

<div id="tb1">
    <a class="easyui-linkbutton" onclick="addSecurityDialog()" data-options="iconCls:'icon-add',plain:true">添加</a>

</div>

<div id="addSecurityDia"></div>
<div id="updateSecurityDia"></div>