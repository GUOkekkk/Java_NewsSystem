<%--
  Created by IntelliJ IDEA.
  User: 29304
  Date: 2020/1/11
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="main.css">
</head>
<body>

<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a href="index.html" class="navbar-brand"></a>
        </div>
        <label id="toggle-label" class="visible-xs-inline-block" for="toggle-checkbox">MENU</label>
        <input class="hidden" id="toggle-checkbox" type="checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav">
                <li class="active"><a href="">首页</a></li>//相当于自动登录
                <li><a href="#">国内</a></li>
                <li><a href="#">国际</a></li>
                <li><a href="#">数读</a></li>
                <li><a href="#">社会</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login2.jsp">管理员登录</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container container-small">
    <h1>登录
        <small>只进行阅读？<a href=" ">注册</a></small>
    </h1>
    <form action="LoginServlet" method="post">
        <div class="form-group">
            <label>用户名/手机/邮箱</label>
            <input type="text" class="form-control" name="username">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" class="form-control" name="password">
        </div>
        <div class="form-group">
            <form action="LoginServlet" method="post">
            <input class="btn btn-primary btn-block" type="submit" value="登录">
            </form>
        </div>
        <div class="form-group">
            <a href="wjmm.jsp">忘记密码？</a>
        </div>

</div>
<div class="footer">
    © 2020 哈尔滨工业大学（威海） 理学院数学系信计二班
</div>

</body>
</html>
