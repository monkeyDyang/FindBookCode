/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 16:27:06 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:30:55
 */

package com.myproject.findbook.mapper.book;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.book.*;

/**
 * URLMapper
 */
public interface URLMapper //extends Mapper<URLEntity>
{
    List<URLEntity> selectAll();    

    URLEntity selectEntity(int No);

    boolean insertEntity(URLEntity entity);

    boolean updateEntity(URLEntity entity);

    boolean deleteEntity(URLEntity entity);
    
}