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
    <style>
    html,body {
        width: 100%;
        height: 100%;
        margin: 0;
        padding: 0;
        background-image: url("bg1.jpeg");/*有可能重复出现*/
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
        width: 550px;
        height: 360px;
        background:	#E6E6FA none repeat scroll 0 0;
        opacity:0.6;
    }


   /* .content .p1{
        background-color: #e4b9b9;
        height:  500px;
        background-image: url("bg.jpg");
        background-position: 564px 373px;
        position: relative;
    }
    .content .p2{
        font-size: 16px;
        position: absolute;
        bottom: 0;
        padding: 2px 22px;
        left: 42%;
        color: black;
    }
    .opacity{
        background-color: #E6E6FA;
        opacity:0.6
    }
    .ragb{
        background: rgba(230,230,250,0.6);
    }*/
    </style>


    <%--/*内部样式 只针对当前标签生效*/--%>
</head>

<body bgcolor="#f0f8ff"></body>
<%--<div class="container">
    <div class="dialog">--%>
<div class="content">
<div align="center">
    <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr>
    <h2><div style="font-size: 35px; font-family: 楷体; font-weight: bold; " class="p2">新闻管理系统</div></h2>
    <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr>
    <form action="LoginServlet" method="post"><%--form标签中的内容可以提交到后台java--%>
        <h4><div style="font-size: 20px; font-family: '微软雅黑 Light'; font-weight: bold; " class="p2">用户登录</div></h4>
        <%--用户名：<input type="text" name="username"><br><%--换行--%>
        <%--密码:<input type="password" name="pwd"><br>--%>
        <%--<input type="submit" value="登录">--%>
<%--<tr>换行--%>
        <%--<table border="1">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username" class="input-sm"></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td><input type="password" name="pwd"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="登录"  class="btn btn-primary" &nbsp &nbsp>
                    <a href="register.jsp">快速注册</a>
                </td>
            </tr>
        </table>--%>
        <table border="1">
            <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr>
        <div id="u&p">
            <div class="row fore-group" >
                <div class="col-sm-4" align="right" ><label>用户名：</label></div>
                <div class="col-sm-4"><input type="text" name="username" class="form-control input-sm" required=""></div>
                <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr>
            </div>
            <div class="row fore-group" >
                <div class="col-sm-4" align="right"><label>密码：</label></div>
                <div class="col-sm-4"><input type="password" name="pwd" class="form-control input-sm" required=""></div>
            </div>
            <tr>&nbsp</tr> <tr>&nbsp</tr> <tr>&nbsp</tr>

        </div>
        </table>
        <tr>
            <td colspan="1" align="center">
                <input type="submit" value="登录"  class="btn btn-primary" >&nbsp
            </td>
            <td>
                &nbsp  &nbsp
            </td>
            <td>
                <a href="wjmm.jsp" class="btn btn-primary"> 忘记密码</a>
            </td>
        </tr>
    </form>
<div style="color: red;">${msg}</div><%--将提示字体颜色设置为红色--%>
</div>
<%--</div>
</div>--%>
</body>
</div>
</div>
</html>
