/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-12 00:13:01 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-12 00:20:47
 */

package com.myproject.findbook.application.admin;

import java.util.List;

import com.myproject.findbook.entity.user.UserBaseInfoEntity;
import com.myproject.findbook.service.user.UserBaseInfoService;

/**
  * UserManageApplication___用户管理功能应用层（管理员功能）
  */
 public class UserManageApplication {
 
     private UserBaseInfoService service = new UserBaseInfoService();

     /**
      * 功能描述：
            1、对用户数据表进行增删改查操作
            2、返回List<UserBaseInfo>,前端以动态表格的形式展示
      */

    //   List<UserBaseInfoEntity> entity = new ArrayList<UserBaseInfoEntity>();

    //   public List<UserBaseInfoEntity> getGridJson(){

        

    //     return 
    //   }

    public UserBaseInfoEntity Get(String keyValue){

        UserBaseInfoEntity entity = new UserBaseInfoEntity();

        return entity;
    }

    public String AddUser(UserBaseInfoEntity model){


        return "";
    }

    public String submitForm(UserBaseInfoEntity model){
        
        return "";
    }

    public String deleteForm(String keyValue){
        
        return "";
    }
 }