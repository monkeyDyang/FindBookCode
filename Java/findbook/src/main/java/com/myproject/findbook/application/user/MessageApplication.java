/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-12 00:08:07 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-12 00:12:15
 */

 package com.myproject.findbook.application.user;

import com.myproject.findbook.entity.user.MessageEntity;
import com.myproject.findbook.service.user.MessageSevice;

/**
  * MessageApplication__留言板功能应用层
  */
 public class MessageApplication {
 
     /**
      * 功能描述：
            1、用户添加留言
            2、用户删除留言
            3、用户点赞留言
      */

    private MessageSevice sevice = new MessageSevice();

    public String addMessage(MessageEntity model){

        return "";
    }

    public String deleteMessage(String keyValue,String userCode){

        return "";
    }

    public String likeMessage(String keyValue){

        return "";
    }
 }