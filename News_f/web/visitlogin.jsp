<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/1/9
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游客登录</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <style>
        html,body {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            background-image: url("bg3.jpg");/*有可能重复出现*/
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;/*拖动滚动条时会不会一起移动*/
        }

        body {
            display: flex;
            align-items: center; /*定义body的元素垂直居中*/
            justify-content: center; /*定义body的里的元素水平居中*/
        }
        .content {
            width: 700px;
            height: 200px;
            background:	#E6E6FA none repeat scroll 0 0;
            opacity:0.6;
        }
    </style>
</head>
<body>
<div class="content">
    <div align="center">
        <h2><div style="font-size: 35px; font-family: 楷体; font-weight: bold; " class="p2">游客登陆只能进行查阅,是否继续？</div></h2>
        <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr>
        <%--<form action="welcome.jsp" method="post">--%><%--form标签中的内容可以提交到后台java--%>
            <tr>
                <td colspan="1" align="center">
                    <form action="LoginServlet1" method="post"><input type="submit" value="是" class="btn btn-primary">
                        &nbsp &nbsp &nbsp
                    <input type="button" value="否" onclick="javascript:location.href='login.jsp'" class="btn btn-primary">
                </form></td>
            </tr>
        <%--</form>--%>
    </div>
</div>
</body>
</html>
