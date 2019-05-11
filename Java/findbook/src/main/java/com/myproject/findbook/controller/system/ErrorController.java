/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 16:52:42 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-11 18:01:39
 */

 package com.myproject.findbook.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
  * ErrorController
  */
  @Controller
  @RequestMapping("/error")
 public class ErrorController {
 
     @RequestMapping("/view")
     public String View(){
        return "Error";
     }
 }