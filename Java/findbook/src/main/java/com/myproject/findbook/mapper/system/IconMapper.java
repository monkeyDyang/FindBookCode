/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 17:02:15 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:24:00
 */

package com.myproject.findbook.mapper.system;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.system.*;
/**
 * IconMapper
 */
public interface IconMapper //extends Mapper<IconEntity>
{

    List<IconEntity> selectAll(); 

    IconEntity selectEntity(int No);

    boolean insertEntity(IconEntity entity);

    boolean updateEntity(IconEntity entity);

    boolean deleteEntity(IconEntity entity);
}