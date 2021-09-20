package com.test.servlet;

import com.test.dao.UserDao;
import com.test.dao.UserDaoInterface;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ExistServlet")
public class ExistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("uname");
        UserDaoInterface userDao = new UserDao();
        boolean isExist = userDao.getUserByName(name);
        if (isExist){
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().print("用户名已被占用");//可以往前台返回一个字符串
        } else {
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().print("用户名可以使用");
        }
    }
}