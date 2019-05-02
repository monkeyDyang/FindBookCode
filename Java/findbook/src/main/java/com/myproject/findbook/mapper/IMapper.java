/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-02 22:09:27 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:17:08
 */

package com.myproject.findbook.mapper;

import java.util.List;

/**
 * IMapper
 */
 public interface IMapper<T> {
 
     /**
      * Mapper公共接口
      */

      /**
       * 获取表所有数据
       * @return
       */
      List<T> selectAll();
      
      /**
       * 根据主键获取一个Entity
       * @return
       */
      T selectEntity(int No);

      /**
       * 插入一条数据
       * @param entityT
       * @return 插入成功返回true / 失败false
       */
      boolean insertEntity(T entityT);

      /**
       * 更新一条数据
       * @param entityT
       * @return 更新成功返回true / 失败false 
       */
      boolean updateEntity(T entityT);

      /**
       * 删除一条数据
       * @param entityT
       * @return  删除成功返回true / 失败false
       */
      boolean deleteEntity(T entityT);
 }