/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-03 03:24:12 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:28:39
 */

 package com.myproject.findbook.service.system;

import java.util.List;

import com.myproject.findbook.entity.system.CodeEntity;
import com.myproject.findbook.mapper.system.CodeMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
  * CodeService
  */
  @Service
 public class CodeService {
 
     @Autowired
     private CodeMapper dao;

     public List<CodeEntity> getList(){

        return dao.selectAll();
     }

     public CodeEntity Get(int No) {
         
        return dao.selectEntity(No);
     }

     public boolean Add(CodeEntity entity) {
         
        return dao.insertEntity(entity);
     }

     public boolean Change(CodeEntity entity) {
         
        return dao.updateEntity(entity);
     }

     public boolean Remove(CodeEntity entity) {
         
         return dao.deleteEntity(entity);
     }
 }