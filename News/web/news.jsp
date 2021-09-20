<%--
  Created by IntelliJ IDEA.
  User: 29304
  Date: 2020/1/8
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>新闻页面</title>
    <style>
        .sj-div{ text-indent:2em; font-size:12px}
        .sj-p p{ text-indent:2em; font-size:24px}

        .content {
            /*display: flex;*/
            /*align-items: center; !*定义body的元素垂直居中*!*/
            justify-content: center; /*定义body的里的元素水平居中*/
            width: 800px;


        }
    </style>
</head>
<div>
    <div class="test test-1">
<div class="scrollbar"></div>

<form action="LoginServlet2" method="post">
<tr align="left" style="color: bisque">详细信息>>>${news.type}>>>${news.title}</tr>
<div align="center">
    <h2><div style="font-size: 30px; font-family: 华文仿宋; font-weight: bold;">${news.title}</div></h2>
    <h4 align="center" style="color: black">
        作者：${news.author} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        创建时间：${news.createdate} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        修改时间：${news.modifydate}
    </h4>
    <td colspan="1">
        <h1><div style="font-size: 15px; font-family: 华文仿宋; font-weight: bold;" class="content sj-div" >${news.content}</div></h1>
    </td>
    <tr><input type="submit" value="返回"  ></tr>
</div>
</form>
</div>
</div>

</body>

</html>
