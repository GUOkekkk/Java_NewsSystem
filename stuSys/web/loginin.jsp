<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/3
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%><%----%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <link rel="stylesheet" href="bootstrap.min.css">

    <%--内部样式--%>
    <style>
     body{
        /*background-image: url('bg.jpg');
         background-repeat: no-repeat;
         background-size: 100% 100%;
         background-attachment: fixed;/*背景会不会和滚动条一起动 scroll会跟着滚动*/

     }
    </style>

</head>
<body bgcolor="#f5f5f5">
<div align="center" style="color:blue">
    <h2>学生管理系统</h2>
    <form action="login" method="post"><%--form标签中的内容可以提交到后台java--%>
        <h4>用户登录</h4>
       <%--用户名：<input type="text" name="username"><br><%--换行--%>
        <%--密码:<input type="password" name="pwd"><br>--%>
        <%--<input type="submit" value="登录">--%>
        <table border="2">
            <tr>
                <td style="color: blue">用户名:</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td style="color: blue">密码:</td>
                <td><input type="password" name="pwd"></td>
            </tr>
            <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="登录" class="btn-primary"> &nbsp &nbsp<%--空格--%>
                        <a href="register.jsp">注册</a>
                    </td>
            </tr>
        </table>

<%--        <div>&lt;%&ndash;分成12份 设置含几份&ndash;%&gt;--%>
<%--            <div class="row form-group">--%>
<%--                <div class="col-md-3">--%>
<%--                    <label>用户名：</label>--%>
<%--                </div>--%>
<%--                <div class="col-md-6">--%>
<%--                    <input type="text" class="form-control input-sm">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="row form-group">--%>
<%--                <label>密码：</label>--%>
<%--                <input type="password" class="form-control input-sm">--%>
<%--            </div>--%>
<%--        </div>--%>

    </form>
<div style="color:black;">${msg}</div>
</div>
</body>
</html>
