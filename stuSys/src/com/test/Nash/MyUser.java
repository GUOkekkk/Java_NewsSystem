package com.test.Nash;

public class MyUser {
    private String name;
    private String pwd;

    public MyUser() {
    }

    public MyUser(String name, String pwd) {
        this.name = name;
        this.pwd = pwd;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    //alt+insert 可以得到快捷键getter 用ctrl可以同时选中

    public String getName() {
        return name;
    }

    public String getPwd() {
        return pwd;
    }




}