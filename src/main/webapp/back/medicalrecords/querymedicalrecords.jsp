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
        $("#medical").datagrid({
            url:'/his_zym/medicalRecords/queryOneOne?id=${param.id}',
            columns:[[
                {title:"病历ID",field:"id",width:300,align:'center'},
                {title:'病历名字',field:'medicalrecordsname',width:200,align:'center',
                    formatter:function(value,row,index){
                        return "<a onclick=\"qChapter('"+row.id+"')\">"+value+"</a>"
                    }
                },
                {title:"日期",field:"generatetime",width:200,align:'center'},
                {title:"主诉",field:"cc",width:200,align:'center'},
                {title:"现病史",field:"hpi",width:100,align:'center'},
                {title:"既往史",field:"pmh",width:200,align:'center'},
                {title:"个人史",field:"ph",width:200,align:'center'},
                {title:"婚姻史",field:"eh",width:200,align:'center'},
                {title:"家族史",field:"fh",width:200,align:'center'},
                {title:"体格检查",field:"pc",width:200.,align:'center'},
                {title:"辅助检查",field:"ae",width:200.,align:'center'}
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
<div id="medical"></div>
<div id="tb1">
</div>
