/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:12:59 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:16:05
 */

package com.myproject.findbook.service.user;

import java.util.List;

import com.myproject.findbook.entity.user.UserBaseInfoEntity;
import com.myproject.findbook.mapper.user.UserBaseInfoMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * UserBaseInfoService
  */
  @Service
 public class UserBaseInfoService {
 
     @Autowired
     private UserBaseInfoMapper dao;

     public List<UserBaseInfoEntity> getList(){
         return dao.selectAll();
     }
 }