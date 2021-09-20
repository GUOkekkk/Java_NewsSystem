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

@WebServlet("/EditStuServlet")
public class EditStuServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取用户请求数据
        request.setCharacterEncoding("UTF-8");
        int sno = Integer.parseInt(request.getParameter("sno"));
        String sname = request.getParameter("sname");
        String ssex = request.getParameter("ssex");
        String sphone = request.getParameter("sphone");
        int sage = Integer.parseInt(request.getParameter("sage"));

        //把数据封装成对象传给Dao层
        Student student=new Student();
        student.setSno(sno);
        student.setSname(sname);
        student.setSsex(ssex);
        student.setSage(sage);
        student.setSphone(sphone);

        //调用dao层
        UserDaoInterface userDaoInterface=new UserDao();
        boolean isEdit =userDaoInterface.editStudent(student);

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
