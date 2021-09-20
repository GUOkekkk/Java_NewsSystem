package com.test.servlet;

import com.test.dao.NewsDao;
import com.test.pojo.MyUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet2")
public class LoginServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
        String a = request.getParameter("a");

        if(a!=null ) {
            String name = "admin";
            String pwd = "123";
            MyUser myUser = new MyUser(name, pwd);

            NewsDao newsDao = new NewsDao();
            if (newsDao.getLogin(myUser)) {
                request.getRequestDispatcher("GetAllServlet").forward(request, response);
            }
        }
    }
}
