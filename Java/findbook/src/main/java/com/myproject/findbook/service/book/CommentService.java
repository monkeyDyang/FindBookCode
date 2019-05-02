/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:37:36 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:45:03
 */

 package com.myproject.findbook.service.book;

import java.util.List;

import com.myproject.findbook.entity.book.CommentEntity;
import com.myproject.findbook.mapper.book.CommentMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * CommentService
  */
  @Service
 public class CommentService {
 
     @Autowired
     private CommentMapper dao;

     public List<CommentEntity> getList(){

        return dao.selectAll();
     }

     public boolean Add(CommentEntity entity) {

        boolean flag = false;

        if (entity != null) {
            flag = dao.insertEntity(entity);
        }
         return flag;
     }
 }