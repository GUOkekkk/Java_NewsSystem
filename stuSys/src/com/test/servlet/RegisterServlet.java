package com.test.servlet;

import com.test.dao.UserDao;
import com.test.dao.UserDaoInterface;
import com.test.Nash.MyUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        MyUser myUser = new MyUser(name,pwd);//对对象进行封装
        UserDaoInterface userDao = new UserDao();

        boolean isSuccess = userDao.addUser(myUser);

        //System.out.println(isSuccess);
        if (isSuccess){
            response.sendRedirect("loginin.jsp");
        } else {
            response.sendRedirect("register.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}