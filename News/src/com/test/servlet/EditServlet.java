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

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String type = request.getParameter("type");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String modifydate = request.getParameter("modifydate");
        String content = request.getParameter("content");
        if("".equals(modifydate)) {
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String dates = sdf.format(date);
            modifydate = dates;
        }else {}
        if ("".equals(author)) {
            author ="佚名";
        }else {}
        //把数据封装成对象传给Dao层
        NewsDaoInter newsDaoInter = new NewsDao();
        News news = new News();
        news.setId(id);
        news.setType(type);
        news.setTitle(title);
        news.setModifydate(modifydate);
        news.setAuthor(author);
        news.setContent(content);

        //调用dao层
        boolean isEdit = newsDaoInter.editNews(news);

        if (isEdit){
            response.sendRedirect("GetAllServlet");

        }else {
            //如果更新失败回到编辑页面
            response.sendRedirect("edit.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
