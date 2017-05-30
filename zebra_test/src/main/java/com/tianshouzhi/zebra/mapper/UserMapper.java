package com.tianshouzhi.zebra.mapper;

import com.dianping.zebra.dao.annotation.TargetMethod;
import com.tianshouzhi.zebra.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.concurrent.Future;

/**
 * Created by tianshouzhi on 2017/5/23.
 */
public interface UserMapper {
    @TargetMethod(name ="selectById")
    public Future<User> selectById1(@Param("id")Integer id);
    public User selectById(Integer id);
}
