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

@WebServlet("/QueryServlet")
public class QueryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取前台请求信息
        request.setCharacterEncoding("utf-8");
        //空字符串不能转成int需要判断一下
        String sno_s = request.getParameter("sno");
        int sno = 0;
        if (!("".equals(sno_s))) {
            sno = Integer.parseInt(sno_s);
        }else {//用户没有填写学号
            sno = -1;
        }



        String sname = request.getParameter("sname");

        UserDaoInterface userDaoInterface = new UserDao();
        List<Student> list = userDaoInterface.getStudentBySname(sno,sname);

        request.setAttribute("sno",sno_s);
        request.setAttribute("sname",sname);
        request.setAttribute("list",list);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
