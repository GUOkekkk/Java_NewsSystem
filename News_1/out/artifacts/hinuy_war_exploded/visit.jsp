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
    <link rel="stylesheet" href="bootstrap.min.css">
    <script>
        /*function checkAll() {
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


        }*/


    </script>
</head>
<body>
<div align="center">
    <h3>新闻列表</h3>
    <form action="QueryNewsServlet1" method="post">
        <tr>新闻类型：
            <select name="type">
                <option value="——请输入新闻类型——">——请输入新闻类型——</option>
                <%--<option name="type1" value="${type1}">政治</option>
                <option name="type2 "value="经济">经济</option>
                <option value="军事">军事</option>
                <option value="文化">文化</option>
                <option value="体育">体育</option>--%>
                <option value="政治">政治</option>
                <option value="经济">经济</option>
                <option value="军事">军事</option>
                <option value="文化">文化</option>
                <option value="体育">体育</option>
            </select>
            <input type="submit" value="查询" class="btn btn-primary"  &nbsp  &nbsp &nbsp>
        </tr>
    </form>
    <div align="center">
        <table border="1" style="width: 70%;" class="table table-bordered table-hover table-striped">
            <tr>
                <td align="center">
                    <input type="checkbox" <%--onclick="checkAll()" id="chkAll"--%>>
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
                <td align="center"><a href="NewsServlet1?id=${news.id}" target="_blank" style="text-decoration:underline;" >${news.title}</a></td>
                <td align="center">${news.author}</td>
                <td align="center">${news.createdate}</td>
            </tr>
            </c:forEach>
        </table>
        <td><input type="button" value="返回首页"  onclick="javascript:location.href='login.jsp'">
    </div>
</div>
</body>
</html>
