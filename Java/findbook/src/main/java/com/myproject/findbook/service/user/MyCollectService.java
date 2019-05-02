/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:16:11 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:18:30
 */

package com.myproject.findbook.service.user;

import java.util.List;

import com.myproject.findbook.entity.user.MyCollectEntity;
import com.myproject.findbook.mapper.user.MyCollectMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * MyCollectService
 */
  @Service
 public class MyCollectService {
 
  @Autowired
  private MyCollectMapper dao;
  
  public List<MyCollectEntity> getList() {
      return dao.selectAll();
  }
 }