/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 12:41:18 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 13:56:52
 */

package com.myproject.findbook.common;

import java.util.List;

/**
 * JSON
 */
 public class JSON {
 
     /* 静态常用公共方法  */
    //json 转化类
    //用于在前后端之间转化json格式

    public static Object ToJson(String Json) {
        //json字符串转Java对象
        return Json ;//== null ? null : ;
        //return Json == null ? null : JsonConvert.DeserializeObject(Json); 
    }

    public static String ToJson(Object obj) {
        //java对象转json字符串

        return "";
    }

    // public static ArrayList<T> ToList<T>(String Json){
    //     //json字符串转Java数组
        
    //     return List<Json>;
    //     //return Json == null ? null : JsonConvert.DeserializeObject<List<T>>(Json);
    // }
 }