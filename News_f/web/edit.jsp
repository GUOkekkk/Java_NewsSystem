<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/10
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>编辑新闻</title>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<script>
    function chkTitle() {
        //获取学生姓名文本框的value值
        var title=document.getElementById("title").value;
        if(title==""){
            document.getElementById("msg_1").innerHTML="请填写新闻标题"
            return false;
        }else{
            document.getElementById("msg_1").innerHTML="";
            return true;
        }
    }

    function chkContent() {
        var content=document.getElementById("content").value;
        //获取学生姓名文本框的value值
        if(content.length <= 10){
            document.getElementById("msg_3").innerHTML="新闻内容太短"
            return false;
        }else{
            document.getElementById("msg_3").innerHTML="";
            return true;
        }
    }
    function chkall() {

        var a  = chkTitle();
        var c = chkContent();
        if(a && c){
            return true
        }else {
            return  false
        }
    }
</script>
<div align="center">
    <h4>编辑新闻</h4>
    <form action="EditServlet" method="post" onsubmit="return chkall()">
        <table align="center" border="1" style="width: 70%;" class="table table-bordered table-hover table-striped ">
            <tr>
                <td>新闻编号:</td>
                <td><input type="text" align="center" name="id"  style="width: 170px; text-align: center" value="${news.id}" readonly></td>
            </tr>
            <tr>
                <td>新闻类型:</td>
                <td >
                    <%--<select name="type" id="type">
                        <c:if test="${news.type=='政治'}">checked</c:if>
                        <c:if test="${news.type=='经济'}">checked</c:if>
                        <c:if test="${news.type=='军事'}">checked</c:if>
                        <c:if test="${news.type=='文化'}">checked</c:if>
                        <c:if test="${news.type=='体育'}">checked</c:if>

                    </select>--%>
                        <c:if test="${news.type=='政治'}">
                            <select name="type" id="type" style="width: 170px; text-align: center;text-align-last: center;">
                            <option value="政治" selected>政治</option>
                            <option value="经济">经济</option>
                            <option value="军事">军事</option>
                            <option value="文化">文化</option>
                            <option value="体育">体育</option>
                                <option value="社会">社会</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='经济'}" >
                            <select name="type" id="type" style="width: 170px; text-align: center;text-align-last: center;">
                            <option value="政治">政治</option>
                            <option value="经济" selected>经济</option>
                            <option value="军事">军事</option>
                            <option value="文化">文化</option>
                            <option value="体育">体育</option>
                                <option value="社会">社会</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='军事'}">
                            <select name="type" id="type" style="width: 170px; text-align: center;text-align-last: center;">
                            <option value="政治">政治</option>
                            <option value="经济">经济</option>
                            <option value="军事" selected>军事</option>
                            <option value="文化">文化</option>
                            <option value="体育">体育</option>
                                <option value="社会">社会</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='文化'}">
                            <select name="type" id="type" style="width: 170px; text-align: center;text-align-last: center;">
                            <option value="政治">政治</option>
                            <option value="经济">经济</option>
                            <option value="军事">军事</option>
                            <option value="文化" selected>文化</option>
                            <option value="体育">体育</option>
                                <option value="社会">社会</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='体育'}">
                            <select name="type" id="type" style="width: 170px; text-align: center;text-align-last: center;">
                            <option value="政治">政治</option>
                            <option value="经济">经济</option>
                            <option value="军事">军事</option>
                            <option value="文化" >文化</option>
                            <option value="体育" selected>体育</option>
                                <option value="社会">社会</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='社会'}">
                            <select name="type" id="type" style="width: 170px; text-align: center;text-align-last: center;">
                                <option value="政治">政治</option>
                                <option value="经济">经济</option>
                                <option value="军事">军事</option>
                                <option value="文化">文化</option>
                                <option value="体育">体育</option>
                                <option value="社会" selected>社会</option>
                            </select>
                        </c:if>
                </td>
            </tr>
            <tr>
                <td>修改时间:</td>
                <td><input type="date" name="modifydate" style="width: 170px; text-align: center"></td>
            </tr>
            <tr>
                <td><span style="color: red; text-align: center">*</span>新闻标题:</td>
                <td><input type="text" name="title" style="width: 500px" id="title" value="${news.title}" onblur="chkTitle()">
                    <span style="color: red; position: fixed;"  id="msg_1"></span>
            </tr>
            <tr>
                <td>新闻作者：</td>
                <td><input type="text" name="author" style="width: 500px" value="${news.author}"></td>
            </tr>
            <tr>
                <td><span style="color: red;">*</span>新闻正文：</td>
                <td><textarea type="text" name="content" id="content" autofocus="autofocus" id="content" style="resize: none; overflow:visible; width: 500px; height: 150px; display: block; word-break: break-word;" value="${news.content}" onblur="chkContent()"></textarea>
                    <span style="color: red; position: fixed;" id="msg_3"></span>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="保存">
                    <input type="button" value="取消" onclick="javascript:window.location.href='GetAllServlet'">
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>