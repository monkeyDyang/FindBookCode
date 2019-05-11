/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 14:51:28 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-11 18:58:58
 */

package com.myproject.findbook.controller.system;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
  * IndexController
  */
  @Controller
 public class IndexController {
 
     @RequestMapping("/Index")
     public String Index(HttpSession session){
        return "Index";
     }
     
     @RequestMapping("/Index/2")
     @ResponseBody
     public String Index2(HttpSession session){
        return "Indexsss";
     }
 }