/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-02 10:06:24 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 10:33:37
 */

package com.myproject.findbook.service.system;

import java.util.List;

import com.myproject.findbook.entity.system.AreaEntity;
import com.myproject.findbook.mapper.system.AreaMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * AreaService
  */
  @Service
 public class AreaService {
 
     @Autowired
     private AreaMapper areaDao ;

     public List<AreaEntity> getList(){
         return areaDao.selectAll();
     }
 }