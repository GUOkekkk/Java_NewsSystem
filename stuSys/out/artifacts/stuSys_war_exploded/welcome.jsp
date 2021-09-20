<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/3
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>欢迎首页</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <script>
        function addStu() {
            location.href="add.jsp";  /*进入新页面*/
        }

        function editStu() {
            //首先判断用户是否选择了要编辑的记录 通过勾选的复选框的数量

            var chks = document.getElementsByName("chk");
            var count = 0;//记录选择条数
            var index = 0;//用来记录第几个被选择
            for(var i=0 ; i<chks.length ; i++){
                if(chks[i].checked == true){
                    count++;
                    index=i;
                }
            }
//判断用户选择的记录数是否符合要求
            if(count==0){
                alert("你倒是选啊！！！");
            }else if (count > 1){
                alert("太贪心了。。选太多了")
            }else {
                //实现编辑操作
                var sno = chks[index].value;
                alert(sno);
                //进入编辑页面，将当前学生信息显示在页面 去数据库中拿到所选学生的信息
                //然后把数据返回前台并显示

                //调用GetStuBySno.Servlet并告诉Sno然后查询信息
                window.location.href="GetStuBySnoServlet?sno="+sno;
                //改变浏览器地址
            }
        }
    function delStu() {
        //获取所有复选框
        var chks = document.getElementsByName("chk");
        var snos = "";//要删除的学生学号
        for(var i = 0;i<chks.length;i++){
            if(chks[i].checked==true){
                //当前复选框被选择
                snos+=chks[i].value;
                snos +=","; //分隔符
            }
        }
        if(snos==""){
            alert("你倒是选啊！！！");
        }else {
            if (confirm("你真的要删除么QAQ")){
                /*调用后台执行删除操作*/
                window.location.href="DelServlet?snos="+snos;
            }//设置好了两个按钮确认和取消，返回布尔类型


        }
    }
    function checkAll() {
        //用id判断全选框是否被选择
        var node = document.getElementById("chkAll");
        //获取记录前面的复选框
        var chks = document.getElementsByName("chk");
        if (node.checked){
            for (var i = 0;i<chks.length;i++) {//var 特殊for语法
                chks[i].checked=true;
            }
        }else {
            for (var i = 0;i<chks.length;i++) {
                chks[i].checked=false;
            }
        }
    }

    function unchk(chk_s) {
        /*没没有蜡烛就这样勉强庆祝没没找到答案就不要寻找题目*/
        //获取表头的全选框
        var chkall = document.getElementById("chkAll");
        if (chk_s.checked==false){
            chkall.checked=false;
        }else {//判断剩余所有的情况
            var chks = document.getElementsByName("chk");
            var isall = true; //标记目前是否全选

            for (var i = 0 ; i <chks.length;i++){
                if (chks[i].checked==false){
                    isall = false;
                    break;
                }
            }
            chkall.checked = isall;
        }
    }
    </script>
</head>
<body style="TEXT-ALIGN:center">
<div align="center">
<h1>
    欢迎${username}登陆学生管理系统!
</h1>
    <form action="QueryServlet" method="post">
    学号：<input type="text" size="10px" name="sno" placeholder="请输入学号" value="${sno}">
    姓名：<input type="text" size="10px" name="sname" placeholder="请输入姓名" value="${sname}">
    <input type="submit" value="查询" class="btn btn-danger">
    </form>
    <input type="button" value="新增" onclick="addStu()" class="btn btn-primary">
    <input type="button" value="删除" onclick="delStu()" class="btn btn-warning">
    <input type="button" value="编辑" onclick="editStu()" class="btn btn-block">

<div align="center">
    <table border="1"  style="width: 70%" class="table table-bordered table-hover table-striped">
        <tr>
            <td align="center">
                <input type="checkbox" onclick="checkAll()" id="chkAll"><%--用id往回传数据--%>
            </td>
            <td align="center">
                学号
            </td>
            <td align="center">
                姓名
            </td>
            <td align="center">
                性别
            </td>
            <td align="center">
                联系方式
            </td>
            <td align="center">
                年龄
            </td>
        </tr>

        <c:forEach items="${list}" var="stu">
            <tr>
                <td align="center">
                    <input type="checkbox"  align="center" value="${stu.sno}" name="chk" onclick="unchk(this)">
                    <%--把当前操作的这个传递过去--%>
                </td>
                <td align="center">${stu.sno}</td>
                <td align="center">${stu.sname}</td>
                <td align="center">${stu.ssex}</td>
                <td align="center">${stu.sphone}</td>
                <td align="center">${stu.sage}</td>
            </tr>
        </c:forEach>
        <%--var变量--%>

    </table>
</div>
</div>
</body>
</html>
