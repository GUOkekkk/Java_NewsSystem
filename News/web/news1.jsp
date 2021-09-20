<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/1/10
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻页面</title>
    <style>
        .sj-div{ text-indent:2em; font-size:12px}
        .sj-p p{ text-indent:2em; font-size:24px}
    </style>
</head>
<body>
<div class="test test-1">
<form action="LoginServlet1" method="post">
    <tr align="left" style="color: bisque">详细信息>>>${news.type}>>>${news.title}</tr>
    <div align="center">
        <h2><div style="font-size: 30px; font-family: 华文仿宋; font-weight: bold;">${news.title}</div></h2>
        <h4 align="center" style="color: black">
            作者：${news.author} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            创建时间：${news.createdate} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            修改时间：${news.modifydate}
        </h4>
        <h1><div style="font-size: 15px; font-family: 华文仿宋; font-weight: bold;" class="sj-div">${news.content}</div></h1>
        <tr><input type="submit" value="返回"  ></tr>
        <p>页面访问量为:${news.count}</p>
</body>
</div>
</html>
