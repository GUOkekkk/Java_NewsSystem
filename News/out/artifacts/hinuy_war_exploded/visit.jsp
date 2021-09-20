<%--
  Created by IntelliJ IDEA.
  User: 29304
  Date: 2020/1/9
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>新闻浏览</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js">
        function SearchNews() {
            var keyword = document.getElementById("keyword").value;
            if (keyword==""){
                alert("请输入查询信息");
                return false
            }else {
                return  true
            }
        }

        function SearchType() {
            var type = document.getElementById("type").value;
            if (type=="——请输入新闻类型——"){
                alert("请选择查询类型")
                return false
            }else {
                return true
            }
        }
    </script>
</head>
<body>
<div align="center">
    <h3>新闻列表</h3>
    <form action="QueryNewsServlet1" method="post" onsubmit="return SearchType()">
        <tr>新闻类型：
            <select name="type"  id="type">
                <option value="——请输入新闻类型——">——请输入新闻类型——</option>
                <option value="政治">政治</option>
                <option value="经济">经济</option>
                <option value="军事">军事</option>
                <option value="文化">文化</option>
                <option value="体育">体育</option>
                <option value="社会">社会</option>
            </select>
            <input type="submit" value="查询" class="btn btn-primary" &nbsp  &nbsp &nbsp>
        </tr>
    </form>
    <form action="SearchServlet" method="post" onsubmit="return SearchNews()">
        <input type="search" id="keyword" name="keyword" placeholder="请输入查询信息" value="${keyword}">
    </form>
    <div align="center">
        <table border="1" style="width: 70%;" class="table table-bordered table-hover table-striped">
            <tr>
                <td align="center">
                    新闻类型
                </td>
                <td align="center">
                    新闻标题
                </td>
                <td align="center">
                    新闻作者
                </td>
                <td align="center" >
                    创建时间
                </td>

            </tr>
            <c:forEach items="${list}" var="news">
            <tr>
                <td align="center"> ${news.type} </td>
                <td align="center"><a href="NewsServlet1?id=${news.id}" target="_blank" style="text-decoration:underline;">${news.title}</a></td>
                <td align="center">${news.author}</td>
                <td align="center">${news.createdate}</td>
            </tr>
            </c:forEach>
        </table>
        <td><input type="button" value="返回首页"  onclick="javascript:location.href='login.jsp'">
    </div>
</div>
</body>
</html>
