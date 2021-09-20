package com.test.servlet;

import com.test.Nash.MyUser;
import com.test.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
public class LogininServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*请求处理*/
        /*获取用户名或密码*/
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");

        //System.out.println(username);
        //System.out.println(pwd); 用print的方法检查错误

        MyUser myUser = new MyUser(username, pwd);
        UserDao userDao = new UserDao();
        if (userDao.getLogin(myUser)) {

            /*验证通过进行页面跳转*/

                /*跳转到欢迎首页*/
                /*方式1 重定向 相当于重新输入一个网页*/
                //response.sendRedirect("welcome.jsp");

                //session 会话一个容器有很长的有效期 代表一次浏览器和tomcat的会话
                //把用户名放进session中可以一直保存 断开后会失效
                //获取session对象

                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("username",username);





                /*方式2 转发 可以实现提取上一个网页的内容*/
                /*将用户名放到request的对象中*/
                //request.setAttribute("username", username);
                request.getRequestDispatcher("GetAllServlet").forward(request, response);
                              //执行getallseverlet
            } else {
                /*返回登陆页面 并有提示信息*/
                request.setAttribute("msg", "用户名或密码错误");
                request.getRequestDispatcher("loginin.jsp").forward(request, response);
            }
        }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
