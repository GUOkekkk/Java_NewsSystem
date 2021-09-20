package com.test.util;

import java.sql.*;
import java.util.zip.GZIPInputStream;

/*
打开和关闭数据库（需要频繁使用)_____工具类
 */
public class Database {
    //打开数据库

    public Connection openConn(){
        Connection conn = null;

        try{
            Class.forName("com.mysql.jdbc.Driver"); //加载驱动
            /*建立连接*/
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql", "root", "root");
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    //关闭数据库
    //先打开的后关闭
    public void closeConn(Connection conn, PreparedStatement preparedStatement, ResultSet resultSet){
        try{//缩进能够提高代码的可读性
            if (null!=resultSet){
                resultSet.close();
            }
            if (preparedStatement!=null){
                preparedStatement.close();
            }
            if (null!=conn){
                conn.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }


    }



}
