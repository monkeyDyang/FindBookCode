/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:21:39 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:23:49
 */

package com.myproject.findbook.service.system;

import java.util.List;

import com.myproject.findbook.entity.system.IconEntity;
import com.myproject.findbook.mapper.system.IconMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * IconService
  */
  @Service
 public class IconService {
 
     @Autowired
     private IconMapper dao;

     public List<IconEntity> getList() {
         return dao.selectAll();
     }

     public IconEntity Get(int No) {
         return dao.selectEntity(No);
     }
 }