/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 17:02:15 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 17:05:19
 */

package com.myproject.findbook.mapper.system;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.system.*;
/**
 * MenuMapper
 */
public interface MenuMapper //extends Mapper<MenuEntity>
{

    List<MenuEntity> selectAll(); 

    MenuEntity selectEntity();

    boolean insertEntity(MenuEntity entity);

    boolean updateEntity(MenuEntity entity);

    boolean deleteEntity(MenuEntity entity);
}