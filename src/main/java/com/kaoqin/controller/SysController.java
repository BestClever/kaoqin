package com.kaoqin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author BestClever
 * @title: SysController
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-27 20:44
 */
@Controller
@RequestMapping(value = "")
public class SysController {
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String toLogin(Model model, HttpServletRequest request) throws Exception {

        return "/login";
    }

    @RequestMapping(value = "/index")
    public String index(){
        //判断是角色 是 老师还是学生
//        return indexss();
        return "/studentIndex";
    }

    @RequestMapping(value = "/toAttendanceStudent")
    public String attendancIndex(){
        return "/attendancStudentIndex";
    }

    @RequestMapping(value = "/basicStudnetInfo")
    public String basicStudnetInfo(){
        return "/basicStudnetInfo";
    }


    @RequestMapping(value = "/indexs")
    public String indexs(){
        //判断是角色 是 老师还是学生
        return "/studentIndexs";
//        return "/teacherIndex";
    }
    @RequestMapping(value = "/teacher")
    public String indexss(){

        return "/teacherIndex";
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpServletRequest request){
        //移除 session
        request.getSession().removeAttribute("loginUser");
        return "/login";
    }

    @RequestMapping(value = "/toCourseInfo")
    public String toCourseInfo(){
        return "/courseInfo";
    }

}
