package com.kaoqin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 功能描述:进入登陆页面 <br>
 *
 * @标题: ToLoginController
 * @作者 BestClever
 * @创建时间 2018年11月4日  0004
 */

@Controller
@RequestMapping(value = "")
public class LoginController {

    /**
     * 进入登陆页面
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String toLogin(Model model, HttpServletRequest request) throws Exception {

        return "/login";
    }


    //系统首页
    @RequestMapping("/index")
    public String first(Model model)throws Exception{

        return "/index";
    }



    /**
     *检查session是否过期
     * @return
     */
    @RequestMapping(value = "/activeSession")
    @ResponseBody
    public String getActiveSession(){

        return "valid";
    }

}
