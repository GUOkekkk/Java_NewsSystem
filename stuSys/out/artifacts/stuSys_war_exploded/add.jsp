<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/5
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    function chkSname() {
        //获取学生姓名文本框的value值
        var name=document.getElementById("sname").value;
        if(name==""){
            //alert("你咋不填用户名呢？")
            document.getElementById("msg").innerHTML="你咋不填名字呢"
            return false;
        }else{
            return true;
        }
    }
    function chkAge(input_age) {
        var age = input_age.value;
        //判断age是否是数字 isnan是否不是一个数字 为真不是数字
        if(isNaN(age)){
            document.getElementById("msg_age").innerHTML = "你得输入个数字呢";
            return false;
        }else {
            document.getElementById("msg_age").innerHTML = "";
            return true;
        }
    }
    function chkPhone(input_phone) {
        var phone = input_phone.value;
        if(phone.length!=11){
            document.getElementById("msg_phone").innerHTML = "电话号得是11位的哇？";
            return false;
        }else {
            document.getElementById("msg_phone").innerHTML = "";
            return true;
        }

    }
</script>
<div align="center">
    <h4>学生新增</h4>
<form action="addStu" method="post" onsubmit="return chkSname()">
    <table align="center">
        <tr>
            <td><span style="color: red;">*</span>学生姓名</td>
            <td>
                <input type="text" name="sname" id="sname">
            </td>
            <td width="120px">
                <span style="color: red;" id="msg"></span><%--id去定位到标签--%>
            </td>
        </tr>
        <tr>
            <td>学生年龄</td>
            <td>
                <input type="text" name="sage" onblur="chkAge(this)">
            </td>
            <td width="120px">
                <span style="color: red;" id="msg_age"></span>
            </td>
        </tr>
        <tr>
            <td>学生电话</td>
            <td>
                <input type="text" name="sphone" onblur="chkPhone(this)">
            </td>
            <td width="120px">
                <span style="color: red;" id="msg_phone"></span>
            </td>
        </tr>
        <tr>
            <td>学生性别</td>
            <td colspan="2">
                <input type="radio" name="ssex" value="男" checked>男<%--数字更安全--%>
                <input type="radio" name="ssex" value="女">女
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="确认">
                <input type="reset" value="重交">
            </td>
        </tr>
    </table>
    <%--ctrl+alt+l 代码格式化--%>
    <%----<filter>
        <filter-name>springUtf8Encoding</filter-name>
        <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
        <init-param>
            <param-name>encoding</param-name>
            <param-value>UTF-8</param-value>
        </init-param>
        <init-param>
            <param-name>forceEncoding</param-name>
            <param-value>true</param-value>
        </init-param>
    </filter>滤波器失败--%>

</form>
</div>
</body>
</html>
