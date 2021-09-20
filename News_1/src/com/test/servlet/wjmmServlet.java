package com.test.servlet;

import com.test.dao.NewsDao;
import com.test.pojo.News;
import com.test.pojo.Yanz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/wjmmServlet")
public class wjmmServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        String name=request.getParameter("name");
        String idcard= request.getParameter("idcard");


        Yanz yanz= new Yanz(name,idcard);

        NewsDao newsDao=new NewsDao();

        if(newsDao.GetLogin(yanz)) {
            request.setAttribute("name", name);
            request.getRequestDispatcher("GetAllServlet").forward(request, response);
        }else {
            //跳转回登陆页面
            request.setAttribute("msg","用户名或者身份证错误");
            request.getRequestDispatcher("wjmm.jsp").forward(request,response);
        }

//资源跳转

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
