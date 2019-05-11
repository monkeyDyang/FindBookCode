/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 15:37:14 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-12 00:05:57
 */

 package com.myproject.findbook.application.system;

import com.myproject.findbook.entity.user.UserBaseInfoEntity;
import com.myproject.findbook.service.user.UserBaseInfoService;

/**
  * RegisterApplication————注册功能应用层
  */
 public class RegisterApplication {
 
     private UserBaseInfoService service = new UserBaseInfoService();

     
    /**
    * 功能描述：
        1、注册新用户
        2、判断用户是否存在，注销判断
        3、返回注册结果信息
    * 
    * @param model 由页面提价是用户实体信息
    * @return Success
    */
    public String RegisterUser(UserBaseInfoEntity model){

      String message = "注册成功";

      return message;
    }
 }