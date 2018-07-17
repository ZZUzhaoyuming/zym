
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@include file="../util.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>add Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="${zym}/zzu/css/style.css" />
    <script type="text/javascript" src="${zym}/zzu/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${zym}/zzu/statics/plugin/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" >

    </script>
</head>

<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader" style="font-size: 16px">
                <p>

                    <a href="${zym}/zzu/index.jsp">退出</a>
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    投递简历
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
               投递简历
            </h1>
            <form action="/his_zym/recruitment/addRecruitment"  method="post" enctype="multipart/form-data">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table" align="center">

                    <tr>
                        <td valign="middle" align="right">
                            姓名
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="recruitmentname" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            年龄:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="age" />
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right" >
                            审核:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="sex" value="否" readonly="readonly"/>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            手机:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="recruitmentphone" />
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            简历:
                        </td>
                        <td valign="middle" align="left">
                            <input type="file" class="inputgri" name="mm" />
                        </td>
                    </tr>



                </table>
                <p><div style="text-align: center">
                <input type="submit"  value="确认提交" style="font-size: 17px;"/>
                <input type="reset" value="重置" style="font-size: 17px;">
                    </div>

                </p>
            </form>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg" style="text-align: center;font-size: 18px">
            医院信息管理系统
        </div>
    </div>
</div>
</body>
</html>
