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
        $("#bed").datagrid({
            url:'/his_zym/bed/queryAll',
            columns:[[
                {title:"病床ID",field:"id",width:300,align:'center'},
                {title:'病床区域',field:'bedarea',width:200,align:'center',
                    formatter:function(value,row,index){
                        return "<a onclick=\"qChapter('"+row.id+"')\">"+value+"</a>"
                    }
                },
                {title:"状态",field:"status",width:200,align:'center'},
                {title:"操作",field:"option",width:300,align:'center',
                    formatter: function(value,row,index){
                        return "<a class='del' data-options=\"plain:true,iconCls:'icon-20130408025545236_easyicon_net_30'\" onclick=\"deleteBed('" + row.id + "')\">[删除]</a>&nbsp;&nbsp;&nbsp;<a class='update'  data-options=\"plain:true,iconCls:'icon-edit',\" onclick=\"updateBedDialog('" + row.id + "')\">[修改]</classa>";
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

    function deleteBed(id){

        $.messager.confirm('提示','是否确定要删除？',function(r){

            //确认删除
            if(r){

                $.getJSON("/his_zym/bed/removeBed",{"id":id},function(result){
                    $.messager.show({
                        title:'提示',
                        msg:result.msg,
                    });
                    $('#bed').datagrid('reload');
                });

                $('#bed').datagrid('reload');
            }

        });


    }



    function updateBedDialog(id){

        $("#updateBedDia").dialog({

            title:'修改病床信息',
            width:400,
            height:600,
            href:'/his_zym/back/bed/updateBed.jsp?id='+id,
            buttons:[{
                text:'修改病床信息',
                iconCls:'icon-add',
                handler:updateBed,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        });

    }


    function updateBed(){

        $("#bedupdateInput").form('submit',{

            url:'/his_zym/bed/modifyBed',
            onSubmit:function(){

                return $("#bedupdateInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:result.msg,
                });

                $("#updateBedDia").dialog('close',true);
                $("#bed").datagrid('reload');
            }
        });


    }


    function addBedDialog(){

        $("#addBedDia").dialog({

            title:'添加病人信息',
            width:400,
            height:600,
            href:'/his_zym/back/bed/addBed.jsp',
            buttons:[{
                text:'增加病床',
                iconCls:'icon-add',
                handler:addBed,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        })
    }

    function addBed(){
        $("#bedAddInput").form('submit',{

            url:'/his_zym/bed/addBed',
            onSubmit:function(){

                return $("#bedAddInput").form('validate');

            },
            success:function(data){

                $.messager.show({

                    title:'提示消息',
                    msg:'添加成功',
                });
                $("#addBedDia").dialog('close',true);
                $("#bed").datagrid('reload');
            }

        });



    }



</script>

<div id="bed"></div>

<div id="tb1">
    <a class="easyui-linkbutton" onclick="addBedDialog()" data-options="iconCls:'icon-add',plain:true">添加</a>
</div>

<div id="addBedDia"></div>
<div id="updateBedDia"></div>