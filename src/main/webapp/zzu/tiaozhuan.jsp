<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="/zzu/util.jsp"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${zym}/zzu/css/style.css" />
    <script type="text/javascript" src="${zym}/zzu/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${zym}/zzu/js/echarts.min.js"></script>
    <script type="text/javascript">
        var msg = ${requestScope.result.msg}
            alert(msg);
        var time=5;
        var	timer=setInterval('tiaozhuan()',1000);
        function tiaozhuan(){

            var t= document.getElementById("id8");
            if(time>0){
                t.innerHTML=time;
                time--;
            }else {
                clearInterval(timer);
                location.href = "/his_zym/zzu/index.jsp";
            }
        }
    </script>
</head>
<body>
<div style="font-size: 22px;text-align: center;color: #00bbee">
    您好，您的简历${requestScope.result.msg}。<br/>
    <font id="id8" size="7">5</font>秒钟跳转<a  href="/his_zym/zzu/index.jsp" >或点击我直接跳转</a>
</div>



</div>
</body>
</html>
