<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/8
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<script>
    function chk_pwd() {
        //获取密码
        var pwd = document.getElementById("pwd").value;
        var pwd_c = document.getElementById("pwd_c").value;
        //alert(pwd.length)//获取密码长度
        if (pwd!=pwd_c){
            document.getElementById("msg").innerHTML="你这两次密码不一样啊";
            return false;
        }else{
            document.getElementById("msg").innerHTML="";
            return true;
        }

    }

    function createXml() {
        //用来创建Ajax依赖对象
        try {
            return new XMLHttpRequest()
        }catch (e) {
            try {
                return new ActiveObject("Microsoft.XMLHttp");
            }catch (e) {
                alert("浏览器版本过低")

            }
        }


    }

    function chk_name() {
        //获取用户名
        var uname = document.getElementById("username").value;
        //ajax访问后台 有局部刷新效果 页面的其他位置不会发生变化
        var xmlh = createXml();
        xmlh.open("get","ExistServlet?uname"+uname,true);
        xmlh.send(null);
        var  istrue = true;
        xmlh.onreadystatechange = function () {
            //后台状态码发生变化 就会进入这个function
            if (xmlh.readyState == 4 && xmlh.status == 200){
                //后台执行结束 并执行正确

                var msg = xmlh.responseText;
                document.getElementById("name_msg").innerHTML = msg;
                if (msg == "用户名已被占用"){
                    istrue = false;
                }
            }

        }
        return istrue;
    }

    function chk() {
        //提交前的验证两个返回都是true
        if(chk_pwd() == true/*&&chk_name() == true */){
            return true;
        }else {
            return  false;
        }

    }
</script>
<body>
<div align="center">
    <h4>用户注册</h4>
    <hr width="600px"><%--增加模块--%>
    <form action="RegisterServlet" method="post" onsubmit="return chk()">
        <table>
            <tr>
                <td>用户名：</td>
                <td>
                    <input type="text" name="username" onblur="chk_name()" id="username">
                </td>
                <td width="120px"><span id="name_msg" style="color: red"></span></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="pwd" id="pwd"></td>
                <td width="120px"><span></span></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type="password" name="pwd_c" id="pwd_c" onblur="chk_pwd()"></td>
                <td width="200px"><span id="msg" style="color: red;"></span></td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <input type="submit" value="注册">
                    <input type="button" value="取消" onclick="javascript:location.href='login.jsp'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
