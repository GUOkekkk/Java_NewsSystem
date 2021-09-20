package com.test.util;

import java.sql.*;

public class Database {
    public static Connection openConn(){
    Connection conn=null;
    try{
        //加载驱动
        Class.forName("com.mysql.jdbc.Driver");
        //建立连接
        conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/newsprogram","root","root");
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }catch (SQLException e)
    {e.printStackTrace();}
    catch (Exception e){
        e.printStackTrace();
    }
    return  conn;
}

    //关闭数据库
    public static void closeconn(Connection conn, PreparedStatement preparedStatement, ResultSet resultSet){
        try{
            if (null!=resultSet){
                resultSet.close();
            }
            if (null!=preparedStatement){
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

