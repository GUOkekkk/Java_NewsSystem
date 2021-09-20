package com.test.servlet;

import com.test.dao.NewsDao;
import com.test.pojo.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/NewsServlet")
public class NewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_s=request.getParameter("id");
        int id=Integer.parseInt(id_s);
        NewsDao newsDao = new NewsDao();
        News news = newsDao.getNewsById(id);
        request.setAttribute("news",news);
        request.getRequestDispatcher("news.jsp").forward(request,response);
    }
}
