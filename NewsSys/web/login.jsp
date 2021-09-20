<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/8
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
</head>
<body>
<div align="center" style="color:black">
    <form action="LoginServlet" method="post"><%--form标签中的内容可以提交到后台java--%>
        <h4>管理员登录</h4>
        <%--用户名：<input type="text" name="username"><br><%--换行--%>
        <%--密码:<input type="password" name="pwd"><br>--%>
        <%--<input type="submit" value="登录">--%>
        <table border="2">
            <tr>
                <td style="color: darkblue">用户名:</td>
                <td><input type="text" name="username" required></td>
            </tr>
            <tr>
                <td style="color: darkblue">密码:</td>
                <td><input type="password" name="pwd" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="登录"  align="center">&nbsp &nbsp<%--空格--%>
                    <a href="visit.jsp">游客登陆</a>
                    <a href="test.jsp">测试</a>
                </td>
            </tr>
        </table>


    </form>
    <div style="color:red;">${msg}</div>
</div>
</body>
</html>
