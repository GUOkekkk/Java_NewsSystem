package com.test.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTest {
    public static void main(String[] args) throws SQLException{
        //加载驱动
    try{
        Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
        //数据库连接
        Connection conn= null;
        conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql", "root", "root");
        System.out.println("数据库连接成功");
        //访问数据库
        //关闭数据库
        conn.close();
    }

    }

