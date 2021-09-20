<%--
  Created by IntelliJ IDEA.
  User: 29304
  Date: 2020/1/9
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新闻浏览</title>
    <%--<script>
        function checkAll() {
            //获取全选框
            var node=document.getElementById("chkAll");
            //获取记录前的复选框
            var chks =document.getElementsByName("chk");
            if(node.checked){//全选框被选中了
                for(var i=0;i<chks.length;i++){
                    chks[i].checked=true;
                }
            }
            else{
                for(var i=0;i<chks.length;i++){
                    chks[i].checked=false;
                }

            }

        }
        function unchk(chk_s) {
            //获取下全选框
            var chkall = document.getElementById("chkAll");
            if (chk_s.checked == false){
                //当前复选框没被选中，
                chkall.checked = false;
            }else{
                var chks=document.getElementsByName("chk");
                var isAll= true;
                for (var i=0;i<chks.length;i++){
                    if (chks[i].checked ==false){
                        isAll=false;
                        break;//结束循环
                    }
                }
                chkall.checked = isAll;
            }


        }
    </script>--%>
</head>
<body>
<div align="center">
    <h3>新闻列表</h3>
    <form action="QueryStuServlet" method="post">
        新闻类型：<input type="text" size="15px" name="type"  value="${type}" placeholder="--请选择新闻类型--">
        <input type="submit" value="查询">
    </form>
    <div align="center">
        <table border="1">
            <tr>
                <td align="center">
                    <input type="checkbox" <%--onclick="checkAll()" id="chkAll">--%>>
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
                <td align="center"><input type="checkbox" value="${news.id}" name="chk" <%--onclick="unchk(this)"--%>></td>
                <td align="center"> ${news.type} </td>
                <td align="center">${news.title}</td>
                <td align="center">${news.author}</td>
                <td align="center">${news.cdate}</td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
