/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-02 11:52:21 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 11:57:54
 */

package com.myproject.findbook.service;

import com.myproject.findbook.mapper.TestMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * TestService
 */
  @Service
 public class TestService {
 
     @Autowired
    private TestMapper testMapper;

    public String getTest(){
        return testMapper.selectAll().toString();
    }

 }