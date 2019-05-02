/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:34:22 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:37:31
 */

package com.myproject.findbook.service.book;

import java.util.List;

import com.myproject.findbook.entity.book.PriceHistoryEntity;
import com.myproject.findbook.mapper.book.PriceHistoryMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * PriceHistoryService
  */
  @Service
 public class PriceHistoryService {
 
     @Autowired
     private PriceHistoryMapper dao;

     public List<PriceHistoryEntity> getList() {
         return dao.selectAll();
     }

     public PriceHistoryEntity Get() {
        return dao.selectEntity();
     }

     /**
      * 根据Code获取List
      */


      /**
       * 根据多条件获取List
       */
 }