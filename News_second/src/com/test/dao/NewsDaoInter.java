package com.test.dao;

import com.test.pojo.MyUser;
import com.test.pojo.News;
import com.test.pojo.Yanz;

import java.util.List;

public interface NewsDaoInter {
    boolean getLogin(MyUser myUser);

    List<News> getALLNews();

    List<News> getNewsByType(String type);

    News getNewsById(int id);

    boolean GetLogin(Yanz yanz);
    boolean delNews(int[] ids);
    boolean addNews(News news);
    boolean editNews(News news);
}
