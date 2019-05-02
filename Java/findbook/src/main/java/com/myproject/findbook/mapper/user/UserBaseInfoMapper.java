/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 17:05:43 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 17:07:49
 */

package com.myproject.findbook.mapper.user;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.user.*;

/**
 * UserBaseInfoMapper
 */
public interface UserBaseInfoMapper //extends Mapper<UserBaseInfoEntity>
{

    List<UserBaseInfoEntity> selectAll(); 

    UserBaseInfoEntity selectEntity();

    boolean insertEntity(UserBaseInfoEntity entity);

    boolean updateEntity(UserBaseInfoEntity entity);

    boolean deleteEntity(UserBaseInfoEntity entity);
}