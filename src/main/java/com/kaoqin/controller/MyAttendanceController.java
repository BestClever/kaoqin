package com.kaoqin.controller;

import com.kaoqin.baseframework.result.DataGridResultInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.baseframework.result.ResultDataUtil;
import com.kaoqin.service.MyAttendanceService;
import com.kaoqin.vo.AttendanceVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author BestClever
 * @title: MyAttendance
 * @projectName kaoqin
 * @description: 我的考勤信息
 * @date 2020-05-28 17:21
 */
@Controller
@RequestMapping(value = "/myAttendanceController")
public class MyAttendanceController {

    @Autowired
    private MyAttendanceService myAttendanceService;

    @RequestMapping(value = "/listStudentInfo")
    @ResponseBody
    public DataGridResultInfo listStudentInfo(AttendanceVo attendanceVo){
        PageWrapper pageWrapper = myAttendanceService.listStudentInfo(attendanceVo);
        return ResultDataUtil.createQueryResult(pageWrapper);
    }
}
