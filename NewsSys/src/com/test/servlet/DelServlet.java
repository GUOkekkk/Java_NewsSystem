package com.test.servlet;

import com.test.dao.NewsDao;
import com.test.dao.NewsDaoInter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DelServlet")
public class DelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//获取要删除的学生编号
        String ids=request.getParameter("ids");
        //把字符串分割和转换成数组
        //首先获取每个学号
        String[] arr_ids=ids.split(",");
        //将字符串数组中的每一个数值都转换成一个int类型
        int[] int_ids = new int[arr_ids.length];
        //申请存储空间确定申请数量

        for(int i = 0 ; i<arr_ids.length;i++){
            int_ids[i] = Integer.parseInt(arr_ids[i]);
        }//类型转换
        //用DAO层
        NewsDaoInter newsDaoInter = new NewsDao();
        boolean isDelete=newsDaoInter.delNews(int_ids);
        if (isDelete){
            response.sendRedirect("GetAllServlet");
        }else{
            response.sendRedirect("GetAllServlet");
        }
        //System.out.println(ids);
        //System.out.println(isDelete);


    }
}
