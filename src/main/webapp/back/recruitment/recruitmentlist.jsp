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
        $("#recruitment").datagrid({
            url:'/his_zym/recruitment/queryAll',
            columns:[[
                {title:"应聘ID",field:"id",width:300,align:'center'},
                {title:'姓名',field:'recruitmentname',width:200,align:'center'},
                {title:"年龄",field:"age",width:200,align:'center'},
                {title:"手机",field:"recruitmentphone",width:100,align:'center'},
                {title:"简历",field:"recruitmenturl",width:200,align:'center',
                    formatter:function(value,row,index){

                        return "<a onclick=\"qqq('"+row.id+"')\">"+value+"</a>"

                    }
                },
                {title:"是否通过",field:"sex",width:200,align:'center'},
                {title:"操作",field:"option",width:300,align:'center',
                    formatter: function(value,row,index){
                        return "<a class='del' data-options=\"plain:true,iconCls:'icon-20130408025545236_easyicon_net_30'\" onclick=\"deleteRecruitment('" + row.id + "')\">[删除]</a>&nbsp;&nbsp;&nbsp;<a class='update'  data-options=\"plain:true,iconCls:'icon-edit',\" onclick=\"updateRecruitmentDialog('" + row.id + "')\">[审核]</classa>";
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

    function deleteRecruitment(id){

        $.messager.confirm('提示','是否确定要删除？',function(v){

            //确认删除
            if(v){

                $.getJSON("/his_zym/recruitment/removeRecruitment",{"id":id},function(result){
                    $.messager.show({
                        title:'提示',
                        msg:result.msg,
                    });
                    $('#recruitment').datagrid('reload');
                });

                $('#recruitment').datagrid('reload');
            }

        });


    }

//修改（审核）
    function updateRecruitmentDialog(id){

        $("#updateRecruitmentDia").dialog({

            title:'修改信息',
            width:400,
            height:600,
            href:'/his_zym/back/recruitment/updateRecruitment.jsp?id='+id,
            buttons:[{
                text:'审核信息',
                iconCls:'icon-add',
                handler:updateRecruitment,  //点击事件：点击提交表单的内容到后台
            },{
                text: '关闭',
                iconCls: 'icon-cancel',
                handler: function () {
                }
            }]
        });

    }


    function updateRecruitment(){

        $("#recruitmentupdateInput").form('submit',{

            url:'/his_zym/recruitment/modifyRecruitment',
            onSubmit:function(){

                return $("#recruitmentupdateInput").form('validate');

            },
            success:function(result){

                $.messager.show({

                    title:'提示消息',
                    msg:result.msg,
                });
                $("#updateRecruitmentDia").dialog('close',true);
                $("#recruitment").datagrid('reload');
            }
        });


    }




function qqq(id){
   window.location.href="/his_zym/recruitment/lookonline?id="+id;
}


</script>

<div id="recruitment"></div>

<div id="tb1">


</div>

<div id="addRecruitmentDia"></div>
<div id="updateRecruitmentDia"></div>