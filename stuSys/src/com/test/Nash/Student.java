package com.test.Nash;


public class Student {
    private int sno;
    private String sname;
    private String ssex;
    private String sphone;
    private int sage;
    public Student() {
    }
    public Student(String sname,String ssex,String sphone,int sage){
        this.sno=sno;
        this.sname=sname;
        this.sage=sage;
        this.sphone=sphone;
        this.ssex=ssex;
    }

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public int getSage() {
        return sage;
    }

    public void setSage(int sage) {
        this.sage = sage;
    }
}
