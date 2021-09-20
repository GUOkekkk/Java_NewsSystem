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
    </script>
</head>
<body>
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a href="blogin1.jsp" class="navbar-brand"></a>
        </div>
        <label id="toggle-label" class="visible-xs-inline-block" for="toggle-checkbox">MENU</label>
        <input class="hidden" id="toggle-checkbox" type="checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav">
                <li class="active"><a href="LoginServlet3?a='a'">新闻首页</a></li>
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
                <a href="LoginServlet3?a='a'" class="list-group-item ">综合</a>
                <a href="QueryNewsServlet2?type=政治" class="list-group-item">政治</a>
                <a href="QueryNewsServlet2?type=经济" class="list-group-item">经济</a>
                <a href="QueryNewsServlet2?type=军事" class="list-group-item">军事</a>
                <a href="QueryNewsServlet2?type=文化" class="list-group-item">文化</a>
                <a href="QueryNewsServlet2?type=体育" class="list-group-item">体育</a>
                <a href="QueryNewsServlet2?type=社会" class="list-group-item">社会</a>

            </div>
        </div>
        <div class="col-sm-7">
            <div class="news-list">

                <c:forEach items="${list}" var="news">
                        <div class="news-list-item clearfix">
                        <div class="col-xs-12">
                        <td align="center"><a href="NewsServlet1?id=${news.id}" target="_blank" style="text-decoration:underline; font-size: 25px" >${news.title}</a></td>
                                <div class="info">
                                    点击量：${news.count}
                            </div></div>
                        </div>
                    </c:forEach>
                        </div>
           </div>
        <div class="col-sm-3">
            <form action="SearchServlet" method="post" onsubmit="return SearchNews()">
              <div class="search-bar">
                    <input type="search" id="keyword" class="form-control" placeholder="搜一下" name="keyword" value="${keyword}">
                </div>

            </form>
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
                            <div class="title">公益写作用狗血赚眼泪？ 知名记者直言受害者的伤痛不是猎奇 </div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title">夫妻驻扎廊坊拍摄抗霾纪录片获奖，期间孩子出生成长都无暇顾及</div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title">谷雨丨夫妻驻扎廊坊拍摄抗霾纪录片获奖，期间孩子出生都无暇顾及</div>
                            <div class="desc">15k阅读 1k评论</div>
                        </div>
                        <div class="item">
                            <div class="title">伊朗承认意外击落乌克兰客机并道歉 责任人将被移交军事法庭</div>
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
