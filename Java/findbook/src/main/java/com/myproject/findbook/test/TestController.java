package com.myproject.findbook.test;
 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
 
@RestController
public class TestController {
 
    @RequestMapping("/")
    String home() {
        String test = "awsome";
        
        return "Hello World!"+test;
    }
 
}