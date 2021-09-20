package com.test.servlet;

import com.test.Nash.Student;
import com.test.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddStuServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*获取信息*/
        request.setCharacterEncoding("UTF-8"); //防止中文乱码
        String name=request.getParameter("sname");
        int age= Integer.parseInt(request.getParameter("sage"));//用第三种方法
        String phone=request.getParameter("sphone");
        String sex=request.getParameter("ssex");
        Student student=new Student(name,sex,phone,age);
        UserDao userDao=new UserDao();
        userDao.addStudent(student);

        //资源跳转
        request.getRequestDispatcher("GetAllServlet").forward(request,response);

        //System.out.println(name); 验错

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
