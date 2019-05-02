/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 17:02:15 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 13:28:39
 */

package com.myproject.findbook.mapper.system;

import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.myproject.findbook.entity.system.*;

/**
 * AreaMapper
 */ 
 @Repository
 public interface AreaMapper{

    @Select("select * from fb_system_area")
    @Results({
        @Result(property = "AreaCode",column = "AreaCode"),
        @Result(property = "AreaName",column = "AreaName"),
        @Result(property = "AreaType",column = "AreaType"),
        @Result(property = "ParentAreaCode",column = "ParentAreaCode")
    })
    List<AreaEntity> selectAll(); 

    AreaEntity selectEntity();

    boolean insertEntity(AreaEntity entity);

    boolean updateEntity(AreaEntity entity);

    boolean deleteEntity(AreaEntity entity);
 }