<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>=
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../util.jsp"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/black/easyui.css">
    <link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${zym}/back/statics/easyui/themes/IconExtension.css">
    <script type="text/javascript" src="${zym}/back/statics/easyui/js/jquery.min.js"></script>
    <script type="text/javascript" src="${zym}/back/statics/easyui/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${zym}/back/statics/easyui/js/jquery-easyui-validater.js"></script>
    <script type="text/javascript" src="${zym}/back/statics/easyui/js/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${zym}/back/statics/easyui/js/echarts.min.js"></script>
    <link rel="stylesheet" href="${zym}/back/statics/easyui/kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="${zym}/back/statics/easyui/kindeditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="${zym}/back/statics/easyui/kindeditor/kindeditor.js"></script>
    <script charset="utf-8" src="${zym}/back/statics/easyui/kindeditor/zh-CN.js"></script>
    <script charset="utf-8" src="${zym}/back/statics/easyui/kindeditor/plugins/code/prettify.js"></script>
    <script type="text/javascript">

        $(function(){
            $(function(){
                $.get("${zym}/back/main/menu.json",function(result){

                    $.each(result,function(idx,menu){

                        var content="";
                        $.each(menu.child,function(index,ch){

                            var cont=ch.name+"#"+ch.href+"#"+ch.iconCls;

                            content+="<div style='width:90%;margin:5px 0px 5px 0px;border:1px #95B8E7 solid' class='easyui-linkbutton' data-options=\"plain:true,iconCls:'"+ch.iconCls+"'\" onclick=\"skip('"+cont+"')\">"+ch.name+"</div><br/>"

                        });

                        $("#accord").accordion('add',{

                            title:menu.name,
                            iconCls:menu.iconCls,
                            content:content,
                        })
                    });
                },"JSON");
            });

        });

        function skip(content){

            console.log(content);

            var cont=content.split("#");

            if($("#main").tabs('exists',cont[0])){

                $("#main").tabs('select',cont[0])

            }else{

                $("#main").tabs('add',{
                    title:cont[0],
                    href:cont[1],
                    iconCls:cont[2],
                    closable:true,
                    tools:[{
                        iconCls:'icon-reload',
                        handler:function(){

                            var tab=$("#main").tabs('getSelected');

                            tab.panel('refresh');

                        }
                    }],
                });
            }
        }

//================注册======================
        function register(){

            $("#adminRegister").dialog({
                width:600,
                height:500,
                href:"${zym}/back/admin/register.jsp",
                buttons:[{
                    text:'立即注册',
                    iconCls:'icon-save',
                    handler:adminRegister,  //点击事件：点击提交表单的内容到后台
                },{
                    text: '关闭',
                    iconCls: 'icon-cancel',
                    handler: function () {

                    }
                }]
            })
        }


        function adminRegister(){

            $("#adminInput").form('submit',{

                url:'${zym}/admin/register',
                onSubmit:function(){

                    return $("#adminInput").form('validate');

                },
                success:function(data){

                    var result=eval("("+data+")");

                    $.messager.show({

                        title:'提示消息',
                        msg:result.msg,

                    });

                    $("#adminRegister").dialog('close',true);
                    $("#headder").panel({

                        href:'${zym}/back/main/header.jsp',
                    });
                }
            })
        }

//=====================登录======================================
        function loginwindow(){

            $("#managerlogin").dialog({
                width:600,
                height:350,
                href:"${zym}/back/main/login.jsp",
                buttons:[{
                    text:'登录',
                    iconCls:'icon-save',
                    handler:managerLogin,  //点击事件：点击提交表单的内容到后台
                },{
                    text: '关闭',
                    iconCls: 'icon-cancel',
                    handler: function () {

                    }
                }]
            })
        }

        function managerLogin(){

            $("#login").form('submit',{

                url:'${zym}/manager/login',
                onSubmit:function(){

                    return $("#adminlog").form('validate');

                },
                success:function(data){

                    var result=eval("("+data+")");

                    $.messager.show({

                        title:'提示消息',
                        msg:result.msg,

                    });

                    $("#managerlogin").dialog('close',true);
                    $("#headder").panel({

                        href:'${zym}/back/main/head.jsp',
                    });

                }
            })
        }

        function loginout(){

            location.href='${zym}/zzu/index.jsp';
        }





    </script>
</head>
<body class="easyui-layout" data-options="split:false">

<%--头部--%>
<div id="headder" data-options="region:'north',split:false,href:'${zym}/back/main/head.jsp'" style="height:100px;"></div>

<%--尾部--%>
<div data-options="region:'south',split:false" style="height:100px;"></div>

<%--左边栏--%>
<div data-options="region:'west',split:false,width:250">
    <div id="accord" class="easyui-accordion" data-options="fit:true"></div>

</div>

<div data-options="region:'center'">
    <div id="main" class="easyui-tabs" data-options="fit:true"></div>

</div>

<div id="adminRegister"></div>

<div id="managerlogin"></div>

</body>
</html>
