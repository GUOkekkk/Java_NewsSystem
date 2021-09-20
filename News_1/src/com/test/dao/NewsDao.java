package com.test.dao;

import com.test.pojo.MyUser;
import com.test.pojo.News;
import com.test.pojo.Yanz;
import com.test.util.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NewsDao implements NewsDaoInter {
    private Database dataBase = new Database();
    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    @Override
    public boolean getLogin(MyUser myUser) {
        boolean flag = false;
        try {
            connection = dataBase.openConn();
            String sql = "SELECT * FROM myuser u WHERE u.name=? AND u.pwd=?";
            preparedStatement = connection.prepareStatement(sql);//执行sql语句
            preparedStatement.setString(1, myUser.getName());//第一个问号
            preparedStatement.setString(2, myUser.getPwd());//第二个问号
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                //登入成功
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dataBase.closeconn(connection, preparedStatement, resultSet);
        }
        return flag;
    }



    @Override
    public List<News> getNewsByType(String type) {
        List<News> list = new ArrayList<News>();
        String sql = "select type,title,author,createdate from news where 1=1 ";
        if (type != null) {
            sql += " and type like ?";//模糊查询
        }
        connection = dataBase.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            if (type != null) {
                preparedStatement.setString(1, "%" + type + "%");//模糊查询需要调配符

            } else {

            }

            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                News news = new News();
                news.setType(resultSet.getString(1));
                news.setTitle(resultSet.getString(2));
                news.setAuthor(resultSet.getString(3));
                news.setCreatedate(resultSet.getString(4));

                //将学生对象存放到list中
                list.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dataBase.closeconn(connection, preparedStatement, resultSet);
        }
        return list;
    }

    @Override
    public News getNewsById(int id) {
        News news = null;
        String sql = "select id,type,title,author,createdate,modifydate,content from news where id=?";
        connection = dataBase.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            //设置参数
            preparedStatement.setInt(1, id);
            //执行sql语句
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                news = new News();
                news.setId(resultSet.getInt(1));
                news.setType(resultSet.getString(2));
                news.setTitle(resultSet.getString(3));
                news.setAuthor(resultSet.getString(4));
                news.setCreatedate(resultSet.getString(5));
                news.setModifydate(resultSet.getString(6));
                news.setContent(resultSet.getString(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dataBase.closeconn(connection, preparedStatement, resultSet);
        }
        return news;
    }

    @Override
    public boolean GetLogin(Yanz yanz) {
        boolean flag = false;
        try {

            connection = dataBase.openConn();
            String sql = "SELECT * FROM yanz u WHERE u.name=? AND u.idcard=?";
            preparedStatement = connection.prepareStatement(sql);//执行sql语句
            preparedStatement.setString(1,yanz.getName());//第一个问号
            preparedStatement.setString(2, yanz.getIdcard());//第二个问号
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                //登入成功
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dataBase.closeconn(connection, preparedStatement, resultSet);
        }
        return flag;
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

        connection = Database.openConn();
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
            Database.closeconn(connection,preparedStatement,null);
        }//没用到resultSet


        return isDelete;
    }

    @Override
    public boolean addNews(News news) {
        boolean flag = false;
        connection = Database.openConn();
        String sql = "INSERT INTO news(type,title,author,createdate,content) VALUES(?,?,?,?,?)";
        try {

            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,news.getType());
            preparedStatement.setString(2,news.getTitle());
            preparedStatement.setString(3,news.getAuthor());
            preparedStatement.setString(4,news.getCreatedate());
            preparedStatement.setString(5,news.getContent());
            int num = preparedStatement.executeUpdate();
            //改变信息的条数
            if (0 != num) {
                //新增成功
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }  finally {
            Database.closeconn(connection, preparedStatement, resultSet);
        }
        return flag;
    }

    @Override
    public boolean editNews(News news) {
        boolean isedit = false;
        String sql = "update news set type=?,title=?,author=?,modifydate=?,content=? where id=?";
        connection = Database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,news.getType());
            preparedStatement.setString(2,news.getTitle());
            preparedStatement.setString(3,news.getAuthor());
            preparedStatement.setString(4,news.getModifydate());
            preparedStatement.setString(5,news.getContent());
            preparedStatement.setInt(6,news.getId());

            preparedStatement.executeUpdate();

            isedit = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            Database.closeconn(connection, preparedStatement, resultSet);
        return isedit;
    }
    }


    @Override
    public List<News> getALLNews() {
        List<News> list = new ArrayList<News>();
        try {
            connection = Database.openConn();
            String sql = "select * from news";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {//新增成功
                News news = new News();
                news.setId(resultSet.getInt("id"));
                news.setType(resultSet.getString("type"));
                news.setTitle(resultSet.getString("title"));
                news.setAuthor(resultSet.getString("author"));
                news.setCreatedate(resultSet.getString("createdate"));
                news.setModifydate(resultSet.getString("modifydate"));
                news.setContent(resultSet.getString("content"));

                //将学生对象放到list中
                list.add(news);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Database.closeconn(connection, preparedStatement, resultSet);
        }

        return list;

    }
}