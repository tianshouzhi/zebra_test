package com.tianshouzhi.zebra.zebra_dao;

import com.tianshouzhi.zebra.domain.City;
import com.tianshouzhi.zebra.domain.User;
import com.tianshouzhi.zebra.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/**
 * Created by TIANSHOUZHI336 on 2017/3/23.
 */
public class ZebraDaoTest {
    private static   UserMapper userMapper=null;
    @BeforeClass
    public static void beforeClass(){
        //注意只能通过context.getBean的方式，不能通过sqlSessionFactory.getBean的方式
        ApplicationContext context=new ClassPathXmlApplicationContext("single/zebra-single-spring.xml");
        userMapper = context.getBean(UserMapper.class);
    }


    @Test
    public void testSelectById() throws ExecutionException, InterruptedException {
        Future<User> userFuture = userMapper.selectById1(10001);
        User user=userFuture.get();

        System.out.println(user);
    }

    public void printList(List<? extends Object> userList) {
        for (Object obj : userList) {
            System.out.println(obj);
        }
    }
}
