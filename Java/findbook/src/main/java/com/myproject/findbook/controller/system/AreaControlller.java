/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-02 10:34:19 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 11:00:56
 */

package com.myproject.findbook.controller.system;

import com.myproject.findbook.service.system.AreaService;

import java.util.List;

import com.myproject.findbook.entity.system.*;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * AreaControlller
 */
@RestController
public class AreaControlller {

    private AreaService service = new AreaService();

    @RequestMapping("/getArea")
    public String getArea()
    {
        //return "ssss";
        return service.getList().toString();
    }
}