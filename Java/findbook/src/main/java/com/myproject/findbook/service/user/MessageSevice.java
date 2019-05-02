/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:18:45 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:20:16
 */

package com.myproject.findbook.service.user;

import java.util.List;

import com.myproject.findbook.entity.user.MessageEntity;
import com.myproject.findbook.mapper.user.MessageMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * MessageSevice
 */

  @Service
 public class MessageSevice {
 
     @Autowired
     private MessageMapper dao;

     public List<MessageEntity> getList() {
         return dao.selectAll();
     }
 }