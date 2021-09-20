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
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/AddNewsServlet")
public class AddNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //防止中文乱码
        String type=request.getParameter("type");
        String title= request.getParameter("title");
        String author=request.getParameter("author");
        String createdate=request.getParameter("createdate");
        String content=request.getParameter("content");
        String modifydate="";
        System.out.println(createdate);
        System.out.println(content);
        System.out.println(author);
        System.out.println(title);
        System.out.println(type);


        if(("".equals(createdate))) {
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String dates = sdf.format(date);
            createdate = dates;
        }else {}

        if ("".equals(author)) {
            author ="佚名";
        }else {}

        News news =new News(type,title,author,createdate,modifydate,content);
        NewsDaoInter newsDaoInter=new NewsDao();
        newsDaoInter.addNews(news);
      System.out.println(createdate);
        //System.out.println(news);
        //System.out.println(newsDaoInter.addNews(news));
        //资源跳转
        request.getRequestDispatcher("GetAllServlet").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
