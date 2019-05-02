/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 17:05:43 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 17:07:16
 */

package com.myproject.findbook.mapper.user;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.user.*;

/**
 * MyCollectMapper
 */
public interface MyCollectMapper //extends Mapper<MyCollectEntity>
{

    List<MyCollectEntity> selectAll(); 

    MyCollectEntity selectEntity();

    boolean insertEntity(MyCollectEntity entity);

    boolean updateEntity(MyCollectEntity entity);

    boolean deleteEntity(MyCollectEntity entity);
}