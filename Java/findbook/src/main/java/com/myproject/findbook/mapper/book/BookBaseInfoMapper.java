/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 16:27:06 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:41:43
 */

package com.myproject.findbook.mapper.book;

import com.myproject.findbook.mapper.*;

import org.apache.ibatis.annotations.Select;

import java.util.List;

import com.myproject.findbook.entity.book.*;

/**
 * BookBaseInfoMapper
 */
public interface BookBaseInfoMapper //extends IMapper<BookBaseInfoEntity> 
{

    List<BookBaseInfoEntity> selectAll();    

    BookBaseInfoEntity selectEntity(int No);

    boolean insertEntity(BookBaseInfoEntity entity);

    boolean updateEntity(BookBaseInfoEntity entity);

    boolean deleteEntity(BookBaseInfoEntity entity);

    // @Select("select * form fb_book_baseinfo");
    // @Results({
    //     @Result(property = '_'),
    // })
    // @Override
    // public List<BookBaseInfoEntity> selectAll() {
    //     return super.selectAll();
    // }
 
     
 }