/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 17:02:15 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-03 03:26:13
 */

package com.myproject.findbook.mapper.system;

import com.myproject.findbook.mapper.*;

import java.util.List;

import com.myproject.findbook.entity.system.*;
/**
 * CodeMapper
 */
public interface CodeMapper //extends Mapper<CodeEntity>
{
    List<CodeEntity> selectAll(); 

    CodeEntity selectEntity(int No);

    boolean insertEntity(CodeEntity entity);

    boolean updateEntity(CodeEntity entity);

    boolean deleteEntity(CodeEntity entity);
    
}