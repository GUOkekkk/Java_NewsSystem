package com.test.dao;

import com.test.Nash.MyUser;
import com.test.Nash.Student;
import com.test.util.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements UserDaoInterface{ //方法重写选第一个
    Database database = new Database();
    Connection connection;//放着打开的数据库
    PreparedStatement preparedStatement;
    ResultSet resultSet;

    //登入 布尔类型的返回量和形参
    @Override
    public boolean getLogin(MyUser myUser) {
        //标识登入是否成功
        boolean flag = false;
        try {
            //打开数据库 按ctrl提示
            connection = database.openConn();
            String sql = "select * FROM myuser u WHERE u.name=? and u.pwd=?";//占位符?
            //创建PreparedStatement对象 要写一遍在sql中
            preparedStatement = connection.prepareStatement(sql);//prepare去执行sql语句
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


        return flag; //true进入
    }

    @Override
    public boolean addStudent(Student student) {
        boolean flag = false;
        connection = database.openConn();
        String sql = "INSERT INTO student(sname,ssex,sphone,sage) VALUES(?,?,?,?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getSname());
            preparedStatement.setString(2, student.getSsex());
            preparedStatement.setString(3, student.getSphone());
            preparedStatement.setInt(4, student.getSage());
            int num = preparedStatement.executeUpdate();//改变信息的条数
            if (0 != num) {
                //新增成功
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();//添加副类异常
        } finally {
            database.closeConn(connection, preparedStatement, resultSet);
        }
        return flag;
    }

    @Override
    public List<Student> getAllStudent() {
        List<Student> list = new ArrayList<Student>();

        String sql = "select sno,sname,ssex,sphone,sage from student";
        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();//拿到结果集合

            while (resultSet.next()) {
                Student student = new Student();//创建学生对象
                student.setSno(resultSet.getInt("sno"));
                student.setSname(resultSet.getString("sname"));
                student.setSsex(resultSet.getString("ssex"));
                student.setSphone(resultSet.getString("sphone"));
                student.setSage(resultSet.getInt("sage"));
                //一条大河波浪宽，风吹稻花香两岸
                //十里平湖霜满天，寸寸青丝愁华年。对月形单望相护，只羡鸳鸯不羡仙。
                list.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConn(connection, preparedStatement, resultSet);
        }

        return list;
    }

    @Override
    public Student getStuBySno(int sno) {
        Student student = null;

        String sql = "select sno,sname,ssex,sphone,sage from student where sno =?";
        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            //设置参数
            preparedStatement.setInt(1, sno);
            //执行sql语句
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                student = new Student();//创建一个对象但是信息为空set去赋值
                student.setSno(resultSet.getInt(1));
                student.setSname(resultSet.getString(2));
                student.setSsex(resultSet.getString(3));
                student.setSphone(resultSet.getString(4));
                student.setSage(resultSet.getInt(5));


            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConn(connection, preparedStatement, resultSet);
        }
        return student;
    }

    @Override
    public boolean editStudent(Student student) {
        boolean isedit = false;
        String sql = "update student set sname=?,sage=?,sphone=?,ssex=? where sno=?";
        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getSname());
            preparedStatement.setInt(2, student.getSage());
            preparedStatement.setString(3, student.getSphone());
            preparedStatement.setString(4, student.getSsex());
            preparedStatement.setInt(5, student.getSno());

            preparedStatement.executeUpdate();

            isedit = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isedit;
    }

    @Override
    public boolean delStudent(int[] snos) {
        boolean isDelete = false;
        String sql = "delete from student where sno in (";
        for (int i = 0; i < snos.length; i++) {
            sql += "?";
            if (i != snos.length - 1) {
                sql += ",";//最后一个不加','
            }
            //动态拼接
        }
        sql+=")";

        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            for (int i = 0; i < snos.length ; i++){
                preparedStatement.setInt((i+1),snos[i]);

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
    public List<Student> getStudentBySname(int sno, String sname) {
        List<Student> list = new ArrayList<Student>();
        String sql = "select* from student where 1=1 ";
        if (sname!= null && !("".equals(sname))){
            sql += "and sname like ?";
        }
        if (sno != -1 ){//用户填写了学号
            sql += " and sno = ?";

        }
        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            if (sname!=null && !("".equals(sname)) && sno != -1){
                preparedStatement.setString(1,"%"+sname+"%");
                preparedStatement.setInt(2,sno);
            }else if (sname !=null && !("".equals(sname)) && sno == -1) {
                preparedStatement.setString(1,"%"+sname+"%");
            }else if ((sname ==null || ("".equals(sname)) )&& sno != -1){
                preparedStatement.setInt(1,sno);
            }
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){

                Student student = new Student();//创建一个对象但是信息为空set去赋值
                student.setSno(resultSet.getInt(1));
                student.setSname(resultSet.getString(2));
                student.setSsex(resultSet.getString(3));
                student.setSphone(resultSet.getString(4));
                student.setSage(resultSet.getInt(5));

                list.add(student);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            database.closeConn(connection,preparedStatement,resultSet);
        }

        return list;
    }

    @Override
    public boolean getUserByName(String name) {
        boolean isExist = false;
        String sql = "select * from myuser where name = ?";
        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                isExist = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            database.closeConn(connection,preparedStatement,resultSet);
        }
        return isExist;
    }

    @Override
    public boolean addUser(MyUser myUser) {
        boolean isSuccess = false;
        String sql = "insert into myuser (name,pwd) values (?,?)";//与数据库的名称一一对应
        connection = database.openConn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,myUser.getName());
            preparedStatement.setString(2,myUser.getPwd());
            int num = preparedStatement.executeUpdate();
            if (num > 0){
                isSuccess = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.closeConn(connection,preparedStatement,resultSet);
        }
        return isSuccess;


}


}