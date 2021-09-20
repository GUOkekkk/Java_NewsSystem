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
            <ol class="breadcrumb">
                <li><a href="LoginServlet2?a='1'">编辑页</a></li>
                <li><a href="QueryNewsServlet?type=${news.type}">${news.type}</a></li>
                <li class="active">${news.title}</li>
                <li class="active">正文内容</li>
            </ol>
            <div class="container">
                <div class="col-md-8">
                    <h1 class="news-title">${news.title}</h1>
                    <div class="news-status">XXk阅读 • XX分之前发布
                        <div class="label label-default">${news.type}</div>
                        <div class="news-content">
                            <blockquote>
                                <p>
                                    作者：${news.author} &nbsp &nbsp &nbsp &nbsp
                                    创建时间：${news.createdate} &nbsp &nbsp &nbsp
                                    修改时间：${news.modifydate}
                                </p>
                            </blockquote>
                            <div>${news.content}</div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                 <div class="side-bar-card">
                  <div class="card-title">相关推荐</div>
                    <div class="card-body">
                       <div class="list">
                         <div class="item clearfix">
                                                <div class="col-xs-5 no-padding-h">
                                                    <img src="https://dummyimage.com/1000x700/666/ccc">
                                                </div>
                                                <div class="col-xs-7">
                                                    <div class="title">Quam dolorem, accusamus autem suscipit dolor esse.</div>
                                                    <div class="desc">15k阅读 1k评论</div>
                                                </div>
                                            </div>
                                            <div class="item clearfix">
                                                <div class="col-xs-5 no-padding-h">
                                                    <img src="https://dummyimage.com/1000x700/666/ccc">
                                                </div>
                                                <div class="col-xs-7">
                                                    <div class="title">Quam dolorem, accusamus autem suscipit dolor esse.</div>
                                                    <div class="desc">15k阅读 1k评论</div>
                                                </div>
                                            </div>
                                            <div class="item clearfix">
                                                <div class="col-xs-5 no-padding-h">
                                                    <img src="https://dummyimage.com/1000x700/666/ccc">
                                                </div>
                                                <div class="col-xs-7">
                                                    <div class="title"><a href="NewsServlet1?id=">Quam dolorem, accusamus autem suscipit dolor esse.</a></div>
                                                    <div class="desc">15k阅读 1k评论</div>
                                                </div>
                                            </div>
                                            <div class="item clearfix">
                                                <div class="col-xs-5 no-padding-h">
                                                    <img src="https://dummyimage.com/1000x700/666/ccc">
                                                </div>
                                                <div class="col-xs-7">
                                                    <div class="title"></div>
                                                    <div class="desc">15k阅读 1k评论</div>
                                                </div>
                                            </div>
                                            <div class="item clearfix">
                                                <div class="col-xs-5 no-padding-h">
                                                    <img src="https://dummyimage.com/1000x700/666/ccc">
                                                </div>
                                                <div class="col-xs-7">
                                                    <div class="title"></div>
                                                    <div class="desc">15k阅读 1k评论</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                 </div>
                    <div class="side-bar-card">
                        <div class="card-title">24小时热闻</div>
                        <div class="card-body">
                            <div class="list">
                                <div class="item">
                                    <div class="title">Lorem ipsum dolor sit amet, consectetur adipisicing </div>
                                    <div class="desc">15k阅读 1k评论</div>
                                </div>
                                <div class="item">
                                    <div class="title">Lorem ipsum dolor sit amet, consectetur adipisicing </div>
                                    <div class="desc">15k阅读 1k评论</div>
                                </div>
                                <div class="item">
                                    <div class="title">Lorem ipsum dolor sit amet, consectetur adipisicing </div>
                                    <div class="desc">15k阅读 1k评论</div>
                                </div>
                                <div class="item">
                                    <div class="title">Lorem ipsum dolor sit amet, consectetur adipisicing </div>
                                    <div class="desc">15k阅读 1k评论</div>
                                </div>
                            </div>
                        </div>
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



<%--<div class="test test-1">
    <div class="scrollbar"></div>
    <ol class="breadcrumb">
        <li><a href="LoginServlet2?a='1'">编辑页</a></li>
        <li><a href="QueryNewsServlet?type=${news.type}">${news.type}</a></li>
        <li class="active">${news.title}</li>
        <li class="active">正文内容</li>
    </ol>--%>

    <%--<tr align="left" style="color: bisque"><a href="LoginServlet2?a='1'"> 详细信息</a>>>>
    <a href="QueryNewsServlet?type=${news.type}">${news.type}</a>>>>${news.title}</tr>--%>
<%--<div align="center">
    <h2><div style="font-size: 30px; font-family: 华文仿宋; font-weight: bold;">${news.title}</div></h2>--%>
    <%--<h4 align="center" style="color: black">
        作者：${news.author} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        创建时间：${news.createdate} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        修改时间：${news.modifydate}
    </h4>
    <h1><div style="font-size: 15px; font-family: 华文仿宋; font-weight: bold;" class="content sj-div">${news.content}</div></h1>
</div>--%>

</div>




</body>

</html>
