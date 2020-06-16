package com.kaoqin.controller;

import com.kaoqin.baseframework.enums.CommonEnum;
import com.kaoqin.baseframework.result.DataGridResultInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.baseframework.result.ResultDataUtil;
import com.kaoqin.baseframework.result.ResultInfo;
import com.kaoqin.domain.Courseinfo;
import com.kaoqin.service.TeacherService;
import com.kaoqin.vo.AttendanceVo;
import com.kaoqin.vo.CourseinfoVO;
import com.kaoqin.vo.SysUser;
import com.kaoqin.vo.TeacherVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @Autowired
    private TeacherService service;

    @RequestMapping("/list")
    @ResponseBody
    public DataGridResultInfo getTecher(HttpServletRequest request, CourseinfoVO courseinfoVO){
        SysUser loginUser = (SysUser) request.getSession().getAttribute("loginUser");
        courseinfoVO.setTeacherName(loginUser.getUserName());
        PageWrapper pageInfo =   service.listAllInfo(courseinfoVO);
        return ResultDataUtil.createQueryResult(pageInfo);
    }
    @RequestMapping("/lists")
    @ResponseBody
    public DataGridResultInfo getTechers(AttendanceVo attendanceVo){
        PageWrapper pageInfo =   service.getAttendance(attendanceVo);
        return ResultDataUtil.createQueryResult(pageInfo);
    }



    @RequestMapping("/confirmClock")
    @ResponseBody
    public ResultInfo confirmClock(CourseinfoVO courseinfoVO){
        //设置考勤口令
        service.confirmClock(courseinfoVO);
        return ResultDataUtil.createSuccess(CommonEnum.SUCCESS);
    }
    @RequestMapping("/change")
    public ResultInfo chage(CourseinfoVO courseinfoVO){
//        service.chageAttendance();
        return ResultDataUtil.createSuccess(CommonEnum.SUCCESS);

    }
    @RequestMapping(value = "/upstudents")
    @ResponseBody
    public ResultInfo upstudents(AttendanceVo attendanceVo){
        //设置考勤口令
        service.upstudents(attendanceVo);
        return ResultDataUtil.createSuccess(CommonEnum.SUCCESS);
    }

}
