/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-11 08:48:45 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-11 23:58:08
 */
package com.myproject.findbook.controller.system;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myproject.findbook.application.system.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * LoginController---登录控制器
 */
@Controller
@RequestMapping("/login")
 public class LoginController{

    /**
     * Controller控制器只负责页面交互
     * 实际业务逻辑交给Application应用层
     */
    private LoginApplication loginApp = new LoginApplication();

    @RequestMapping("/view")
    public String View(){
        return "Login";
    }

    /**
     * 登录身份验证
     * @param session
     * @param userCode
     * @param password
     * @return
     * @throws Exception
     */
    @RequestMapping("/check")
    // @ResponseBody
    public ModelAndView Check(HttpSession session ,String userCode ,String password) throws Exception
    {
        /**
         * !!!!如果用户名or密码错误，返回错误提示，并不能跳转到主界面，也不能保存Session
         */
        ModelAndView mv = new ModelAndView();
        String message = "";
        //身份验证 
        message = loginApp.LoginCheck(userCode, password);

        if(message.equals("Success")){
            //存入Session
            session.setAttribute("userCode", userCode);
            //跳转到主页
            mv.setViewName("redirect:/Index");
        }
        if(userCode.equals("admin") && password.equals("admin")){ 
            mv.setViewName("Admin");          //进入管理员界面
        }
        return mv;
    }

    /**
     * 退出登录
     * @param session
     * @return
     * @throws Exception
     */
    @RequestMapping("/logout")
    public ModelAndView Logout(HttpSession session) throws Exception
    {
        //Session过期
        session.invalidate();
        //跳转到主页
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/login/view");

        return mv;
    }

}