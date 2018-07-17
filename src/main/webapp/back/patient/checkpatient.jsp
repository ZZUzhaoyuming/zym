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
            url:'/his_zym/patient/queryAlll?id=${param.id}',
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
                {title:"病床",field:"bedid",width:200,align:'center'}
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
            pagination:true,
            pageList:[3,6,9,12],
            pageSize:3,
            toolbar:'#tb1',

        });
    });


</script>

<div id="patients"></div>

<div id="tb1">

</div>