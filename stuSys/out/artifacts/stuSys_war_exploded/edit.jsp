<%--
  Created by IntelliJ IDEA.
  User: gkbb
  Date: 2020/1/6
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改学生信息</title>
</head>
<body>
    <div align="center">
        <h4>修改学生信息</h4>
        <form action="EditStuServlet" method="post">
            <table align="center" border="1">
                <tr>
                    <td>学号:</td>
                    <td><input type="text" name="sno" value="${student.sno}" readonly></td>
                </tr>
                <tr>
                    <td>学生姓名:</td>
                    <td><input type="text" name="sname" value="${student.sname}"></td>
                </tr>
                <tr>
                    <td>学生年龄</td>
                    <td><input type="text" name="sage" value="${student.sage}"></td>
                </tr>
                <tr>
                    <td>学生电话</td>
                    <td><input type="text" name="sphone" value="${student.sphone}"></td>
                </tr>
                <tr>
                    <td>学生性别</td>
                    <td>
                        <c:if test="${student.ssex=='男'}">
                            <input type="radio" name="ssex" value="男" checked>男
                            <input type="radio" name="ssex" value="女">女
                        </c:if>

                        <c:if test="${student.ssex=='女'}">
                            <input type="radio" name="ssex" value="女" checked>女
                            <input type="radio" name="ssex" value="男">男
                        </c:if>
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
