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
        <table align="center" border="1">
            <tr>
                <td>新闻编号:</td>
                <td><input type="text" name="id" value="${news.id}" readonly></td>
            </tr>
            <tr>
                <td>新闻类型:</td>
                <td>
                    <%--<select name="type" id="type">
                        <c:if test="${news.type=='政治'}">checked</c:if>
                        <c:if test="${news.type=='经济'}">checked</c:if>
                        <c:if test="${news.type=='军事'}">checked</c:if>
                        <c:if test="${news.type=='文化'}">checked</c:if>
                        <c:if test="${news.type=='体育'}">checked</c:if>

                    </select>--%>
                        <c:if test="${news.type=='政治'}">
                            <select name="type" id="type">
                            <option value="政治" selected>政治</option>
                            <option value="经济">经济</option>
                            <option value="军事">军事</option>
                            <option value="文化">文化</option>
                            <option value="体育">体育</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='经济'}" >
                            <select name="type" id="type">
                            <option value="政治">政治</option>
                            <option value="经济" selected>经济</option>
                            <option value="军事">军事</option>
                            <option value="文化">文化</option>
                            <option value="体育">体育</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='军事'}">
                            <select name="type" id="type">
                            <option value="政治">政治</option>
                            <option value="经济">经济</option>
                            <option value="军事" selected>军事</option>
                            <option value="文化">文化</option>
                            <option value="体育">体育</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='文化'}">
                            <select name="type" id="type">
                            <option value="政治">政治</option>
                            <option value="经济">经济</option>
                            <option value="军事">军事</option>
                            <option value="文化" selected>文化</option>
                            <option value="体育">体育</option>
                            </select>
                        </c:if>
                        <c:if test="${news.type=='体育'}">
                            <select name="type" id="type">
                            <option value="政治">政治</option>
                            <option value="经济">经济</option>
                            <option value="军事">军事</option>
                            <option value="文化" >文化</option>
                            <option value="体育" selected>体育</option>
                            </select>
                        </c:if>
                </td>
            </tr>
            <tr>
                <td>修改时间:</td>
                <td><input type="date" name="mdate"></td>
            </tr>
            <tr>
                <td><span style="color: red;">*</span>新闻标题:</td>
                <td><input type="text" name="title"  id="title" value="${news.title}" onblur="chkTitle()"></td>
                <td width="120px">
                    <span style="color: red;" id="msg_1"></span>
            </tr>
            <tr>
                <td>新闻作者：</td>
                <td><input type="text" name="author" value="${news.author}"></td>
            </tr>
            <tr>
                <td><span style="color: red;">*</span>新闻正文：</td>
                <td><input type="text" name="content" id="content" value="${news.content}" onblur="chkContent()"></td>
                <td width="120px">
                    <span style="color: red;" id="msg_3"></span>
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