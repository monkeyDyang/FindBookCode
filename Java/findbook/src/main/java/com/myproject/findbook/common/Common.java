/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 15:27:59 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-11 15:33:24
 */

package com.myproject.findbook.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
  * Common----常用公共方法
  */
 public class Common {
 
     public static String getUserCode(HttpServletRequest request) {
         /**
          * 获取Session中的用户名
          */
        HttpSession session = request.getSession();
        String userCode = (String) session.getAttribute("userCode");
        if (userCode != null) {
            return userCode;
        }
        return "";
     }

     public static String getDateString(){
        /**
         * 获取当前日期时间
         */
        return "";
     }
 }