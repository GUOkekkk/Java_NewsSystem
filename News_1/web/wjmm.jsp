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
    <link rel="stylesheet" href="login.css">

    <style>


          body{
                margin:0px;
                padding:0px;
                font-family:sans-serif;
                /*background: url(bp1.jpg);*/
                background-size:cover;
                  }
        .box{
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            /*实现块元素百分比下居中*/
            width:450px;
            padding:50px;
            background: rgba(0,0,0,.8);
            box-sizing:border-box;
            box-shadow: 0px 15px 25px rgba(0,0,0,.5);
            border-radius:15px;
        }
        .box h2{
            margin:0 0 30px;
            padding:0;
            color: #fff;
            text-align:center;
        }
        .box.inputbox{
            position:relative;
        }
        .box.inputbox input{
            width: 100%;
            padding:10px 0;
            font-size:16px;
            color:#fff;
            letter-spacing: 1px;
            margin-bottom: 30px;
            border:none;
            border-bottom: 1px solid #fff;
            outline:none;
            background: transparent;
        }
        .box .inputbox label{
            position:absolute;
            top:0px;
            left:0px;
            padding:10px 0;
            font-size: 16px;
            color:#fff;
            pointer-events:none;
            transition:.5s;
        }
        .box .inputbox input:focus ~ label,
        .box .inputbox input:valid ~ label
        {
            top:-18px;
            left:0;
            color:#03a9f4;
            font-size:14px;
        }
    </style>
</head>
<body>
    <form action="wjmmServlet" method="post" onsubmit="return chkname()">
        <div class="box">
            <h2>管理员验证</h2>
            <div class="inputbox" >
                <span style="color:#ff2018;">*</span>
                <input type="text" name="name"  required=""  id="name">
                <span style="color: red;" id="msg"></span>

                <label>管理员名</label>



            </div>
            <div class="inputbox">
                <input type="text" name="idcard"  required="">
                <label> 验证问题 请输入身份证：</label>

            </div>
            <td colspan="2" align="center">
                <input type="submit" value="登录"   class="btn btn-primary">

                <input type="button" value="返回" onclick="returnlogin()"  class="btn btn-primary">
            </td>
            <div style="color:blue;">${msg}</div>
        </div>
    </form>



    <%--<table align="center">


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
</div>--%>
</body>
</html>
