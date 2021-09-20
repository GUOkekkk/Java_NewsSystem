<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/9
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新闻</title>
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
    function chkType() {
        var type1=document.getElementById("type").value;
        if(type1=="——请输入新闻类型——"){
            document.getElementById("msg_2").innerHTML="请选择新闻类型";
            return false;
        }else{
            document.getElementById("msg_2").innerHTML="";
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
        var b = chkType();
        var c = chkContent();
        if(a && b && c){
            return true
        }else {
            return  false
        }
    }
</script>

<div align="center">
    <h4>添加新闻</h4>
    <form action="AddNewsServlet" method="post" onsubmit="return chkall()">
        <table border="1" style="width: 70%;" class="table table-bordered table-hover table-striped ">
            <div align="center">
                <tr>
                    <td><span style="color: red;">*</span>新闻类型：</td>
                    <td>

                    <select name="type" id="type" onchange="chkType()" style="width: 500px; text-align: center;text-align-last: center;" >
                        <option value="——请输入新闻类型——">———————————请输入新闻类型————————————</option>
                        <option value="政治">政治</option>
                        <option value="经济">经济</option>
                        <option value="军事">军事</option>
                        <option value="文化">文化</option>
                        <option value="体育">体育</option>
                        <option value="社会">社会</option>
                    </select>

                    <%--<td width="120px">--%>
                        <span style="color: red; position: fixed" id="msg_2"></span><%--id去定位到标签--%>
                    </td>
                </tr>
            </div>
            <tr>
                <td><span style="color: red; width: 500px">*</span>新闻标题:</td>
                <td>
                    <input type="text" name="title"  id="title" style="width: 500px" onblur="chkTitle()">
                    <span style="margin: auto; position: fixed; color: red;" id="msg_1"></span><%--id去定位到标签--%>

            </tr>

            <tr>
                <td>新闻作者:</td>
                <td>
                    <input type="text" name="author" style="width: 500px" required>
                </td>
            </tr>
            <tr>
                <td><span style="color: red;">*</span>创建时间:</td>
                <td>
                    <input type="date" name="createdate" style="width: 500px">
                </td>
            </tr>
            <tr>
                <td><span style="color: red;">*</span>新闻正文:</td>
                <div class="test test-5" >
                    <div class="scrollbar" >
                        <td><textarea  name="content" autofocus="autofocus" id="content" style="resize: none; overflow:visible;
                    width: 500px; height: 150px; display: block; word-break: break-word;" onblur="chkContent()">
                <%--<td><input type="text" name="content" id="content" onblur="chkContent()" style="width: 500px"></td>--%><%--style="resize: none; overflow:visible;
                    width: 500px; height: 150px; display: block; word-break: break-word;"--%>
                    </textarea></td>
                    </div></div>
                    <span style="color: red; position: fixed" id="msg_3" ></span>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="确认">&nbsp
                    <input type="reset" value="重交">&nbsp
                    <input type="button" value="取消" onclick="javascript:window.location.href='GetAllServlet'">
                </td>
            </tr>
        </table>

    </form>
</div>

</body>
</html>
