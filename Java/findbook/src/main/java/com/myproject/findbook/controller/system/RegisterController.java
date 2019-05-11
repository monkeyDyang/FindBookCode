/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 15:34:46 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-11 23:58:20
 */

package com.myproject.findbook.controller.system;

import com.myproject.findbook.application.system.*;
import com.myproject.findbook.entity.user.UserBaseInfoEntity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
  * RegisterController-----注册控制器
  */
  @Controller
  @RequestMapping("/register")
 public class RegisterController {
 
    private RegisterApplication registerApp = new RegisterApplication();

    @RequestMapping("/view")
    public String  View(){
       return "Register";
    }

     @RequestMapping("/registeruser")
     public ModelAndView RegisterUser(){
        /**
         * 用户注册
         */

        //1、注册
        UserBaseInfoEntity model = new UserBaseInfoEntity();
        registerApp.RegisterUser(model);
        
        //2、跳转到登录界面
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Login");

        return mv;
     }
 }