/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 14:24:49 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-11 18:51:38
 */

package com.myproject.findbook.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

/**
 * LoginInterceptor__登录拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {

    /**
     * 进入Handler方法之前执行
     * 用于身份认证、身份授权
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        
            //Session信息中存在用户信息
            HttpSession session = request.getSession();
            String userCode = (String) session.getAttribute("userCode");
            String url = request.getRequestURI();
            System.out.println(url);
            if (userCode != null) {
                return true;
            }  
            String contextPath=request.getContextPath(); 
            response.sendRedirect(contextPath + "/login/view");
            return false;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}