/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-02 11:16:05 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 11:25:26
 */

package com.myproject.findbook.mapper;

import java.util.List;

import com.myproject.findbook.entity.TestEntity;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
  * TestMapper
  */
  @Repository
 public interface TestMapper {
 
     @Select("select * from test")
     @Results({
         @Result(property = "testNo",column = "testNo"),
         @Result(property = "testName",column = "testName")
     })
     public List<TestEntity> selectAll();

 }
