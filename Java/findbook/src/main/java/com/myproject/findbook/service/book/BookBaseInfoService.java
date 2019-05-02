/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:39:45 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:44:09
 */

package com.myproject.findbook.service.book;

import java.util.List;

import com.myproject.findbook.entity.book.BookBaseInfoEntity;
import com.myproject.findbook.mapper.book.BookBaseInfoMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * BookBaseInfoService
  */
  @Service
 public class BookBaseInfoService {
 
     @Autowired
     private BookBaseInfoMapper dao;

     public List<BookBaseInfoEntity> getList() {
         
        return dao.selectAll();
     }

     public BookBaseInfoEntity Get(int No) {
         return dao.selectEntity(No);
     }

     public boolean Add(BookBaseInfoEntity entity){

        boolean flag = false;

        if (entity != null) {
            flag = dao.insertEntity(entity);
        }

        return flag;
     }

     public boolean Change(BookBaseInfoEntity entity){

        boolean flag = false;

        if (entity != null) {
            flag = dao.updateEntity(entity);
        }

        return flag;
     }
 }