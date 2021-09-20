<%--
  Created by IntelliJ IDEA.
  User: 29304
  Date: 2020/1/10
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function chkname() {
//获取学生姓名文本框的value值
            var name = document.getElementById("name").value;
            if(name == ""){
//alert("请填写用户名！")
                document.getElementById("msg").innerHTML ="请填写用户名！";
                return false;
            }else{
                return  true;
            }
        }
        function returnlogin() {
            location.href="login.jsp";
        }

    </script>
</head>
<body>

<div align="center">
    <form action="wjmmServlet" method="post" onsubmit="return chkname()">
    <table align="center">


    <h4>管理员验证</h4>
    <tr>
    <td><span style="color:#ff2018;">*</span>管理员名</td>
<td>
<input type="text" name="name" id="name">
    </td>
    <td width="120px"><span style="color: red;" id="msg"></span></td>
</tr>
<tr>
<td>验证问题 请输入身份证：</td>
<td><input type="text" name="idcard" onblur="chkAge(this)"></td>
    <td width="120px"><span style="color: red;" id="msg_age"></span></td>
</tr>
        <td colspan="2" align="center">
        <input type="submit" value="确定">
        <input type="button" value="返回" onclick="returnlogin()">
        </td>
    </table>
    </form>
    <div style="color:blue;">${msg}</div>
</div>
</body>
</html>
