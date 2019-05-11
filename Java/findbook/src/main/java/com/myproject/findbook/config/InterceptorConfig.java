/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 14:38:33 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-11 18:56:51
 */

package com.myproject.findbook.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
  * InterceptorConfig---拦截器配置
  */
  @Configuration
  @SpringBootApplication(scanBasePackages = "com.myproject.findbook") //扫描路径
 public class InterceptorConfig implements WebMvcConfigurer
 {
    public static void main(String[] args) {
        SpringApplication.run(InterceptorConfig.class, args);
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration ir = registry.addInterceptor(new LoginInterceptor());
        ir.addPathPatterns("/Index/*"); //拦截包含/Index的URL
        ir.addPathPatterns("/Index"); //拦截包含/Index的URL
    }
     
 }