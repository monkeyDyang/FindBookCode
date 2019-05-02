/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 16:58:53 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:30:09
 */

package com.myproject.findbook.mapper.book;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.book.*;

 /**
  * CommentMapper
  */
 public interface CommentMapper //extends Mapper<CommentEntity> 
 {
 
    List<CommentEntity> selectAll();    

    CommentEntity selectEntity();

    boolean insertEntity(CommentEntity entity);

    boolean updateEntity(CommentEntity entity);

    boolean deleteEntity(CommentEntity entity);
 }