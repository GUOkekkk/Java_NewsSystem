<%--
  Created by IntelliJ IDEA.
  User: 29304
  Date: 2020/1/11
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
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
                <li class="active"><a href="blogin1.jsp">首页</a></li>
                <li><a href="">未加功能</a></li>
                <li><a href="">未加功能</a></li>
                <li><a href="">未加功能</a></li>
                <li><a href="">未加功能</a></li>
                <li><a href="">未加功能</a></li>
                <li><a href="">未加功能</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp">管理员登陆</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <div class="hidden-xs list-group side-bar">
                <a href="LoginServlet3?a='a'" class="list-group-item active">综合</a>
                <a href="QueryNewsServlet2?type=政治" class="list-group-item">政治</a>
                <a href="QueryNewsServlet1?type=经济" class="list-group-item">经济</a>
                <a href="QueryNewsServlet1?type=军事" class="list-group-item">军事</a>
                <a href="QueryNewsServlet1?type=文化" class="list-group-item">文化</a>
                <a href="QueryNewsServlet1?type=体育" class="list-group-item">体育</a>
                <a href="QueryNewsServlet1?type=社会" class="list-group-item">社会</a>

            </div>
        </div>
        <div class="col-sm-7">
            <div class="news-list">

                <c:forEach items="${list}" var="news">
                        <div class="news-list-item clearfix">
                        <div class="col-xs-12">
                        <td align="center"><a href="NewsServlet1?id=${news.id}" target="_blank" style="text-decoration:underline; font-size: 25px" >${news.title}</a></td>
                                <div class="info">
                            </div></div>
                        </div>
                    </c:forEach>
                        </div>
           </div>
        <div class="col-sm-3">
            <div class="search-bar">
                <input type="search" class="form-control" placeholder="搜一下">
            </div>
            <div class="side-bar-card flag clearfix">
                <div class="col-xs-5">
                    <img src="1-1.png">
                </div>
                <div class="col-xs-7">
                    <div class="text-lg">不良新闻举报专区</div>
                    <div>举报电话：110</div>
                </div>
            </div>
            <div class="side-bar-card">
                <div class="card-title">24小时热闻</div>
                <div class="card-body">
                    <div class="list">
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title"> </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>

<div class="footer">
    © 2020 哈尔滨工业大学（威海） 理学院数学系信计二班
</div>
</body>
</html>
