package com.test.pojo;

public class Yanz {
    private String name;
    private String pwd;
    private String idcard;

    public Yanz() {
    }

    public Yanz(String name, String idcard) {
        this.name = name;

        this.idcard = idcard;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }
}
