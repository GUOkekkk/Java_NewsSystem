<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/1/3
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>欢迎首页</title>
    <%--<link rel="stylesheet" href="bootstrap.min.css">--%>
    <script>
        function addNews() {
            location.href ="add.jsp";
        }
        function editNews() {
            //首先判断用户是否选择了要编辑的记录 通过勾选的的复选框的数量
            var chks = document.getElementsByName("chk");

            var count = 0;//用来记录用户选择的记录数

            var index = 0;//用来记录被选中的复选框的序号

            for (var i = 0 ; i < chks.length ; i++ ){
                if (chks[i].checked == true){
                    count ++ ;
                    index = i;
                }
            }

            if ( count == 0 ){
                alert("请选择要编辑的新闻");
            }else if (count > 1){
                alert("一次只能选择一条新闻进行编辑");
            }else {
                var id = chks[index].value;
                alert(id);
                window.location.href = "GetNewsByIdServlet?id="+id;
                //改变浏览器地址


            }
            }
        function delNews() {
            var chks = document.getElementsByName("chk");
            var ids = "";
            for (var i = 0;i<chks.length;i++){
                if (chks[i].checked == true){
                    //当前复选框被选中 获取当前学生的学号
                    ids += chks[i].value;
                    ids+=",";//分隔符
                }
            }
            if (ids == ""){
                alert("请选择要删除的记录");
            }else{
                if (confirm("确定要删除吗？")){
                    //确定后调用后台执行操作
                    window.location.href="DelServlet?ids="+ids;
                }
            }
        }
        function checkAll() {
            //获取全选框
            var node = document.getElementById("chkAll");
            //获取记录前的复选框
            var chks =document.getElementsByName("chk");
            if (node.checked){
                //全选框被选中
                for (var i = 0; i < chks.length; i++){
                    chks[i].checked= true;//每一个复选框都要被选中
                }
            }else {
                for (var i = 0; i < chks.length; i++){
                    chks[i].checked= false;//每一个复选框都要不被选中
                }
            }
        }
        function unchk(chk_s) {
            //获取全选框
            var chkall = document.getElementById("chkAll");
            if (chk_s.checked == false){
                //当前复选框没被选中，全选框也没有被选中
                chkall.checked=false;
            }else {
                //当前复选框被选中，判断其他的有没有被选中
                var chks = document.getElementsByName("chk");
                var isAll = true;//标记目前是否全部被选中
                for (var i = 0; i< chks.length; i++){
                    if (chks[i].checked == false){//有一个没被选中
                        isAll = false;
                        break;//那么剩下的就不用判断了
                    }
                }
                chkall.checked= isAll;
            }
        }
    </script>
</head>
<body>
<div align="center">
    <div align="center">
        <form action="">
            当前用户: ${name}
            登陆时间: ${loadtime}
        </form>
        <hr/ size="8" color="black" width=70%>
    </div>
<h3>新闻列表</h3>
    <form action="QueryNewsServlet" method="post">
        <div class="col-lg-8" align="center">
        <tr>新闻类型：
            <%--<select>
                <option value="——请输入新闻类型——">——请输入新闻类型——</option>
                &lt;%&ndash;<option name="type1" value="${type1}">政治</option>
                <option name="type2 "value="经济">经济</option>
                <option value="军事">军事</option>
                <option value="文化">文化</option>
                <option value="体育">体育</option>&ndash;%&gt;

                <option value="政治">政治</option>
                <option value="经济">经济</option>
                <option value="军事">军事</option>
                <option value="文化">文化</option>
                <option value="体育">体育</option>
            </select>--%>
            <input type="text" size="10px" name="type" placeholder="请输入类型" value="${type}">
            <input type="submit" value="查询" class="btn btn-primary"  &nbsp  &nbsp &nbsp>
        </tr>
        </div>
    <%--<tr>学号：<input type="text" size="10px" name="sno" placeholder="请输入学号" value="${sno}" class="input-sm"></tr>
    <tr>姓名：<input type="text" size="10px" name="sname" placeholder="请输入姓名" value="${sname}" class="input-sm"> </tr>--%>
        <div class="col-lg-2" align="center">
            <tr>
                <input type="button" value="新增" onclick="addNews()" class="btn bg-danger">
        <%-- <input type="button" value="编辑" onclick="editStu()" class="btn bg-warning">--%>
                <input type="button" value="删除" onclick="delNews()" class="btn bg-warning">
                <input type="button" value="编辑" onclick="editNews()" class="btn btn-block">
            </tr>
        </div>
        <td></td>
    </form>

    <div align="center">
        <table border="1">
            <tr>
                <td align="center">
                    <input type="checkbox" onclick="checkAll()" id="chkAll">
                </td>
                <td align="center">
                    新闻类型
                </td>
                <td align="center">
                    新闻标题
                </td>
                <td align="center">
                    新闻作者
                </td>
                <td align="center" >
                    创建时间
                </td>

            </tr>
            <c:forEach items="${list}" var="news">
                <tr>
                    <td align="center">
                        <input type="checkbox" value="${news.id}" name="chk" onclick="unchk(this)">
                    </td>
                    <td align="center"> ${news.type} </td>
                    <td align="center"><a href="test.jsp">${news.title}</a></td>
                    <td align="center">${news.author}</td>
                    <td align="center">${news.cdate}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
