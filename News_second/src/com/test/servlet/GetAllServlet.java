package com.test.servlet;

import com.test.dao.NewsDao;
import com.test.dao.NewsDaoInter;
import com.test.pojo.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet( "/GetAllServlet")
public class GetAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NewsDaoInter newsDaoInter=new NewsDao();
        List<News> list=newsDaoInter.getALLNews();
        //转发
        request.setAttribute("list",list);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
