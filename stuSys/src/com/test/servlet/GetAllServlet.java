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
import java.util.List;

@WebServlet("/GetAllServlet")
public class GetAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDaoInterface userDaoInterface = new UserDao();
        List<Student> list = userDaoInterface.getAllStudent();//<>泛型对括号内的信息做限制
        //转发返回list
        request.setAttribute("list",list);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response); //就算进入get也转到post


    }
}
