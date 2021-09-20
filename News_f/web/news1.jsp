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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="main.css">
</head>
<body>
<div class="navbar navbar-default">

        <div class="navbar-header">
            <a href="index.html" class="navbar-brand"></a>
        </div>
        <label id="toggle-label" class="visible-xs-inline-block" for="toggle-checkbox">MENU</label>
        <input class="hidden" id="toggle-checkbox" type="checkbox">

            <ol class="breadcrumb">
                <li><a href="LoginServlet3?a='1'">新闻首页</a></li>
                <li><a href="QueryNewsServlet2?type=${news.type}">${news.type}</a></li>
                <li class="active">${news.title}</li>
                <li class="active">正文内容</li>
            </ol>
    <div class="container">
        <div class="col-md-8">
                    <h1 class="news-title">${news.title}</h1>
                    <div class="news-status">XXk阅读 • XX分之前发布
                        <div class="label label-default">${news.type}</div>
                    </div>
                        <div class="news-content">
                            <blockquote>
                                <p>
                                    作者：${news.author} &nbsp
                                    创建时间：${news.createdate} &nbsp
                                    修改时间：${news.modifydate}
                                    点击量：${news.count}
                                </p>
                            </blockquote>
                            <div>${news.content}</div>
                    </div>
                </div>


<div class="col-md-4">
    <div class="side-bar-card">
        <div class="card-title">相关推荐</div>
        <div class="card-body">
            <div class="list">
                <div class="item clearfix">
                    <div class="col-xs-5 no-padding-h">
                        <img width="100%" height="15%" border="1" src="https://inews.gtimg.com/newsapp_bt/0/11173776534/1000">
                    </div>
                    <div class="col-xs-7">
                        <div class="title"><a href="">让外国人爱上中国白酒，怎能靠院士的“迷之自信”</a></div>
                        <div class="desc">2k阅读 354评论</div>
                    </div>
                </div>
                <div class="item clearfix">
                    <div class="col-xs-5 no-padding-h">
                        <img width="100%" height="15%" border="1" src="https://inews.gtimg.com/newsapp_bt/0/11177313497/1000">
                    </div>
                    <div class="col-xs-7">
                        <div class="title"><a href="">较真 | 让广东人害怕的鼻咽癌，到底是什么妖怪？</a></div>
                        <div class="desc">50.3k阅读 1k评论</div>
                    </div>
                </div>
                <div class="item clearfix">
                    <div class="col-xs-5 no-padding-h">
                        <img width="100%" height="15%" border="1" src="https://inews.gtimg.com/newsapp_bt/0/11163919437/1000">
                    </div>
                    <div class="col-xs-7">
                        <div class="title"><a href="">中国锦鲤信小呆不快乐的2019年：被迫成网红，觉得生活和旅行都没意思</a></div>
                        <div class="desc">15k阅读 1k评论</div>
                    </div>
                </div>
                <div class="item clearfix">
                    <div class="col-xs-5 no-padding-h">
                        <img width="100%" height="15%" border="1" src="https://inews.gtimg.com/newsapp_ls/0/11179611506_295195/0">
                    </div>
                    <div class="col-xs-7">
                        <div class="title"><a href="">伊朗承认“非故意”击落乌克兰客机 风暴眼中的民众这样说</a></div>
                        <div class="desc">15k阅读 1k评论</div>
                    </div>
                </div>
                <div class="item clearfix">
                    <div class="col-xs-5 no-padding-h">
                        <img width="100%" height="15%" border="1" src="https://inews.gtimg.com/newsapp_bt/0/11056040936/1000">
                    </div>
                    <div class="col-xs-7">
                        <div class="title"><a href="">谷雨计划丨地震、自闭、杀人事件…知名记者直言公益写作不是猎奇</a></div>
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
<div class="footer">
    © 2020 哈尔滨工业大学（威海） 理学院数学系信计二班
</div>

</body>
</html>
