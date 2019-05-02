/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:20:20 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:21:36
 */

 package com.myproject.findbook.service.system;

import java.util.List;

import com.myproject.findbook.entity.system.MenuEntity;
import com.myproject.findbook.mapper.system.MenuMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * MenuService
  */
  @Service
 public class MenuService {
 
     @Autowired
     private MenuMapper dao;

     public List<MenuEntity> getList(){

        return dao.selectAll();
     }
 }