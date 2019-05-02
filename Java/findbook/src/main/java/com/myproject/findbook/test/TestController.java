package com.myproject.findbook.test;

import com.myproject.findbook.service.TestService;
import com.myproject.findbook.service.system.AreaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
 
@RestController
public class TestController {
 
    @Autowired
    private TestService service ;

    // @RequestMapping("/")
    // String home() {
    //     String test = service.getTest(); //"awsome";
        
    //     return "Hello World!"+test;
    // }
 
    @Autowired
    private AreaService area_service;

    @RequestMapping("/")
    String getArea(){

        return area_service.getList().toString();
    }
}