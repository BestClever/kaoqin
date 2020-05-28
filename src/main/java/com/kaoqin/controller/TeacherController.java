package com.kaoqin.controller;

import com.kaoqin.baseframework.enums.CommonEnum;
import com.kaoqin.baseframework.result.ResultDataUtil;
import com.kaoqin.baseframework.result.ResultInfo;
import com.kaoqin.domain.Courseinfo;
import com.kaoqin.service.TeacherService;
import com.kaoqin.vo.CourseinfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @Autowired
    private TeacherService service;



    @RequestMapping("/list")
    public ResultInfo getTecher(@RequestHeader String teacherNo){
        List<CourseinfoVO> list = service.getTeachList(teacherNo);

        return ResultDataUtil.createSuccess(CommonEnum.SUCCESS).setData(list);
    }
}
