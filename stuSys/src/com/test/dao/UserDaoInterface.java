package com.test.dao;

import com.test.Nash.MyUser;
import com.test.Nash.Student;

import java.util.List;

/*
用户的接口
声明用户的一些方法
*/

public interface UserDaoInterface {
    //登入
    boolean getLogin(MyUser myUser);
//学生新增功能
    boolean addStudent(Student student);
//学生查询功能
    List<Student> getAllStudent();//空格前返回值类型
    //根据学生学号查询学生的信息
    Student getStuBySno(int sno);
    //修该学生信息 根据学号修改其他信息
    boolean editStudent(Student student);
    //删除学生信息
    boolean delStudent(int[] snos);
    //根据条件查询学生信息
    List<Student> getStudentBySname(int sno, String sname);

    boolean getUserByName(String name);

    boolean addUser(MyUser myUser);

}
