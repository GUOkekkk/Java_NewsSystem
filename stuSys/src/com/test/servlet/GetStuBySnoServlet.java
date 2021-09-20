package com.test.servlet;

import com.test.Nash.Student;
import com.test.dao.UserDao;
import com.test.dao.UserDaoInterface;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/GetStuBySnoServlet")
public class GetStuBySnoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取学生编号
        String sno_s = request.getParameter("sno");
        int sno = Integer.parseInt(sno_s);
        //调用Dao层方法获取学生对象 创建DAO层实例
        UserDaoInterface userDaoInterface = new UserDao();
        Student student =userDaoInterface.getStuBySno(sno);
        //System.out.println(sno_s);
        //资源跳转到编辑页面，并把学生信息传过去

        request.setAttribute("student",student); //前面那个是在新的页面的名字
        request.getRequestDispatcher("edit.jsp").forward(request,response);

    }
}
