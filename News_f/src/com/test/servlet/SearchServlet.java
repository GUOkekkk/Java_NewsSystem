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

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String keyword = request.getParameter("keyword");
        NewsDaoInter newsDaoInter = new NewsDao();
        List<News> list = newsDaoInter.SearchNews(keyword);

        request.setAttribute("keyword",keyword);
        request.setAttribute("list",list);
        request.getRequestDispatcher("blogin.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
