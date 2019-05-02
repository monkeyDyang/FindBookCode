/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 16:27:06 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:33:00
 */

package com.myproject.findbook.mapper.book;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.book.*;

/**
 * PriceHistoryMapper
 */
public interface PriceHistoryMapper //extends Mapper<PriceHistoryEntity>
{

    List<PriceHistoryEntity> selectAll();    

    PriceHistoryEntity selectEntity();

    boolean insertEntity(PriceHistoryEntity entity);

    boolean updateEntity(PriceHistoryEntity entity);

    boolean deleteEntity(PriceHistoryEntity entity);
}