package com.test.servlet;

import com.test.dao.NewsDao;
import com.test.pojo.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/QueryNewsServlet")
public class QueryNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String type= request.getParameter("type");
        System.out.println("type");
        NewsDao u=new NewsDao();
        List<News> list=u.getNewsByType(type);

        /*request.setAttribute("type",type);*/
        request.setAttribute("list",list);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        String type= request.getParameter("type");
        System.out.println(type);
        NewsDao u=new NewsDao();
        List<News> list=u.getNewsByType(type);

        /*request.setAttribute("type",type);*/
        request.setAttribute("list",list);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }
}
