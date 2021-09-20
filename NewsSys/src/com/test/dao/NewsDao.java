package com.test.dao;

import com.test.pojo.MyUser;
import com.test.pojo.News;
import com.test.util.Database;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


public class NewsDao implements NewsDaoInter{
    //方法重写选第一个
    Database database = new Database();
    Connection connection;
    //放着打开的数据库
    PreparedStatement preparedStatement;
    ResultSet resultSet;

    //登入 布尔类型的返回量和形参

    @Override
    public boolean getLogin(MyUser myUser) {
        //标识登入是否成功
        boolean flag = false;
        //System.out.println(myUser.getName());
        //System.out.println(myUser.getPwd());

        try {
            //打开数据库 按ctrl提示
            connection = database.openConn();
            String sql = "select * FROM myuser u WHERE u.name=? and u.pwd=?";
            //占位符?
            //创建PreparedStatement对象 要写一遍在sql中
            preparedStatement = connection.prepareStatement(sql);
            //prepare去执行sql语句
            //给占位符赋值，页面上输入什么值，就是什么值
            preparedStatement.setString(1, myUser.getName());
            preparedStatement.setString(2, myUser.getPwd());
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                //登陆成功
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            database.closeConn(connection, preparedStatement, resultSet);
        }//先打开的后关闭


        return flag;
        //true进入
    }

    @Override
    public boolean delNews(int[] ids) {
        boolean isDelete = false;
        String sql = "delete from news where id in (";
        for (int i = 0; i < ids.length; i++) {
            sql += "?";
            if (i != ids.length - 1) {
                sql += ",";
                //最后一个不加','
            }
            //动态拼接
        }
        sql+=")";

        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            for (int i = 0; i < ids.length ; i++){
                preparedStatement.setInt((i+1),ids[i]);

            }
            int num = preparedStatement.executeUpdate();
            if (num>0){
                isDelete=true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            database.closeConn(connection,preparedStatement,null);
        }//没用到resultSet


        return isDelete;
    }

    @Override
    public boolean addNews(News news) {
        boolean flag = false;
        connection = database.openConn();
        String sql = "INSERT INTO news(type,title,author,createdate,content,count) VALUES(?,?,?,?,?,?)";
        try {

            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, news.getType() );
            preparedStatement.setString(2, news.getTitle() );
            preparedStatement.setString(3,news.getAuthor() );
            preparedStatement.setString(4,news.getCdate());
            preparedStatement.setString(5,news.getContent() );
            preparedStatement.setInt(6,news.getCount() );
            int num = preparedStatement.executeUpdate();
            //改变信息的条数
            if (0 != num) {
                //新增成功
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }  finally {
            database.closeConn(connection, preparedStatement, resultSet);
        }
        return flag;
    }

    @Override
    public List<News> getAllNews() {
        List<News> list = new ArrayList<News>();
        try {
            connection = database.openConn();
            String sql = "select id,type,title,author,createdate,modifydate,content from news";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                //新增成功
                News news = new News();

                news.setId(resultSet.getInt("id"));
                news.setType(resultSet.getString("type"));
                news.setTitle(resultSet.getString("title"));
                news.setAuthor(resultSet.getString("author"));
                news.setCdate(resultSet.getString("createdate"));
                news.setMdate(resultSet.getString("modifydate"));
                news.setContent(resultSet.getString("content"));

                list.add(news);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            database.closeConn(connection, preparedStatement, resultSet);
        }

        return list;
    }

    @Override
    public List<News> getNewsByType(String type) {
        List<News> list = new ArrayList<News>();
        String sql="select* from news where 1=1 ";
        if (type!=null ){
            sql += " and type like ? ";
            //模糊查询
        }
        connection=database.openConn();
        try {
            preparedStatement=connection.prepareStatement(sql);
            if (type!=null){
                preparedStatement.setString(1,"%"+type+"%");
                //模糊查询需要调配符
            }else{
            }
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                News news=new News();

                news.setId(resultSet.getInt("id"));
                news.setType(resultSet.getString("type"));
                news.setTitle(resultSet.getString("title"));
                news.setAuthor(resultSet.getString("author"));
                news.setCdate(resultSet.getString("createdate"));
                news.setMdate(resultSet.getString("modifydate"));
                news.setContent(resultSet.getString("content"));


                list.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            database.closeConn(connection,preparedStatement,resultSet);
        }
        return list;
    }

    @Override
    public News getNewsById(int id) {
        News news = null;
        String sql = "SELECT* FROM news WHERE id=?";

        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            //设置参数
            preparedStatement.setInt(1, id);
            //执行sql语句
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                news = new News();
                //创建一个对象但是信息为空set去赋值
                news.setId(resultSet.getInt(1));
                news.setType(resultSet.getString(2));
                news.setTitle(resultSet.getString(3));
                news.setAuthor(resultSet.getString(4));
                news.setCdate(resultSet.getString(5));
                news.setMdate(resultSet.getString(6));
                news.setContent(resultSet.getString(7));


            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConn(connection, preparedStatement, resultSet);
        }
        return news;
    }

    @Override
    public boolean editNews(News news) {
        boolean isedit = false;
        String sql = "update news set type=?,title=?,author=?,modifydate=?,content=? where id=?";
        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,news.getType());
            preparedStatement.setString(2,news.getTitle());
            preparedStatement.setString(3,news.getAuthor());
            preparedStatement.setString(4,news.getMdate());
            preparedStatement.setString(5,news.getContent());
            preparedStatement.setInt(6,news.getId());

            preparedStatement.executeUpdate();

            isedit = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            database.closeConn(connection,preparedStatement,resultSet);
        }
        return isedit;
    }


}