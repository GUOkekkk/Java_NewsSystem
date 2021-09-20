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

@WebServlet("/GetNewsByIdServlet")
public class GetNewsByIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ids = request.getParameter("id");
        int id = Integer.parseInt(ids);
        //调用Dao层方法获取学生对象 创建DAO层实例
        NewsDaoInter newsDaoInter = new NewsDao();
        News news = newsDaoInter.getNewsById(id);
        //System.out.println(sno_s);
        //资源跳转到编辑页面，并把学生信息传过去

        request.setAttribute("news",news); //前面那个是在新的页面的名字
        request.getRequestDispatcher("edit.jsp").forward(request,response);
    }
}
