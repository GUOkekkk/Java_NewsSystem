package com.test.pojo;

public class News {
    private int id;
    private String type;
    private String title;
    private String author;
    private String cdate;
    private String mdate;
    private String content;
    private  int count;

   public News() {}
    public News(String type, String title, String author, String cdate, String mdate, String content , int count) {

        this.type = type;
        this.title = title;
        this.author = author;
        this.cdate = cdate;
        this.mdate = mdate;
        this.content = content;
        this.count = count;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCdate() {
        return cdate;
    }

    public void setCdate(String cdate) {
        this.cdate = cdate;
    }

    public String getMdate() {
        return mdate;
    }

    public void setMdate(String mdate) {
        this.mdate = mdate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}