/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 17:05:43 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 17:06:41
 */

package com.myproject.findbook.mapper.user;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.user.*;

 /**
  * MessageMapper
  */
 public interface MessageMapper //extends Mapper<MessageEntity>
 {
 
    List<MessageEntity> selectAll(); 

    MessageEntity selectEntity();

    boolean insertEntity(MessageEntity entity);

    boolean updateEntity(MessageEntity entity);

    boolean deleteEntity(MessageEntity entity);
 }