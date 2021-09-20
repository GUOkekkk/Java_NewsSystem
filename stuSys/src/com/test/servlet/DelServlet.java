package com.test.servlet;

import com.test.dao.UserDao;
import com.test.dao.UserDaoInterface;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DelServlet")/*类的大驼峰命名*/
public class DelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取要删除的学生编号
        String snos=request.getParameter("snos");
        //把字符串分割和转换成数组
        //首先获取每个学号
        String[] arr_snos=snos.split(",");
        //将字符串数组中的每一个数值都转换成一个int类型
        int[] int_sons = new int[arr_snos.length]; //申请存储空间确定申请数量

        for(int i = 0 ; i<arr_snos.length;i++){
           int_sons[i] = Integer.parseInt(arr_snos[i]);
        }//类型转换
        //用DAO层
        UserDaoInterface userDaoInterface = new UserDao();
        boolean isDelete=userDaoInterface.delStudent(int_sons);
        if (isDelete){
            response.sendRedirect("GetAllServlet");
        }else{
            response.sendRedirect("GetAllServlet");
        }



    }
}