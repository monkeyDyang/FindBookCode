/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 15:20:43 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-12 00:04:33
 */

 package com.myproject.findbook.application.system;

import com.myproject.findbook.service.user.UserBaseInfoService;

/**
  * LoginApplication---登录应用控制层
  */
 public class LoginApplication {
 
     private UserBaseInfoService service = new UserBaseInfoService();

     /**
      * 功能描述：
            1、登录检查
            2、判断输入的用户名密码是否正确
            3、返回判断结果
      * @param userCode 用户名
      * @param password 密码
      * @return
      */
     public String LoginCheck(String userCode , String password){
        String massage = "Success";
         if (!userCode.equals("1")) {
            massage = "用户名错误";
         }
         else if(!password.equals("1"))
         {
            massage = "密码错误";
         }

         return massage;
     }
     
 }