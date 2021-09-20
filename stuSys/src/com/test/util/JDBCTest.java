package com.test.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTest {
    public static void main(String[] args){

        try{
            Class.forName("com.mysql.jdbc.Driver");  /*加载驱动*/
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        /*数据库连接*/
        Connection cont=null;

        try {
            cont=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?useUnicode=true&characterEncoding=utf-8","root","root");
            System.out.println("数据库连接成功");
            /*使用连接访问数据库*/
        } catch (SQLException e) {
            e.printStackTrace();
        }
        /*关闭数据库*/
        try {
            cont.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}