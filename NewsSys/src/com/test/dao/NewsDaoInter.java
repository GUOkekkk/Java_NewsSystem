package com.test.dao;

import com.test.pojo.MyUser;
import com.test.pojo.News;

import java.util.List;

public interface NewsDaoInter {
    boolean getLogin(MyUser myUser);

    boolean delNews(int[] ids);

    boolean addNews(News news);

    List<News> getAllNews();

    List<News> getNewsByType(String type);

    News getNewsById(int id);

    boolean editNews(News news);
}
