/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:28:49 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:34:06
 */

package com.myproject.findbook.service.book;

import java.util.List;

import com.myproject.findbook.entity.book.URLEntity;
import com.myproject.findbook.mapper.book.URLMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * URLSerivce
  */
  @Service
 public class URLSerivce {
 
     @Autowired
     private URLMapper dao;

     public List<URLEntity> getList() {
         return dao.selectAll();
     }

     public URLEntity Get(int No){
        return dao.selectEntity(No);
     }

     public boolean Add(URLEntity entity) {
        
        boolean flag = false;
        
        if (entity != null) {
            flag = dao.insertEntity(entity);
         }
         return flag;
     }
 }