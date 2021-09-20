package com.test.servlet;

import com.test.dao.NewsDao;
import com.test.pojo.MyUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter( "username");
        String pwd = request.getParameter( "pwd");

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String dates = sdf.format(date);
        request.setAttribute("dates",dates);
        request.setAttribute("name",name);

        System.out.println(name);
        System.out.println(pwd);
        //System.out.println(name);
        //System.out.println(pwd);
        //创建user对象
        MyUser myUser = new MyUser(name,pwd);

        NewsDao newsDao = new NewsDao();
        //如果验证通过那么进行页面跳转
        if(newsDao.getLogin(myUser)){
            //跳转到欢迎首页
            //方式一：重定向
            //response.sendRedirect("welcome.jsp");
            //session  会话
            //获取session 对象
           /* HttpSession session = request.getSession();*/
            //将用户名存储到session对象中
            /*var date = new Date();
            session.setAttribute("name",name);
            session.setAttribute("loadtime",date);

            //方式二：转发
            //将用户名放到request对象
            request.setAttribute("name",name);
            request.setAttribute("loadtime",date);*/
            request.getRequestDispatcher("GetAllServlet").forward(request,response);
            HttpSession session = request.getSession();
            //将用户名存储到session对象中

            session.setAttribute("dates",dates);
            session.setAttribute("name",name);
        }else {
            //跳转回登陆页面
            request.setAttribute("msg","用户名或者密码错误");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
