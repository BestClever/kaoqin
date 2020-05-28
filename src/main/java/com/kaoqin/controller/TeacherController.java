package com.kaoqin.controller;

import com.kaoqin.baseframework.enums.CommonEnum;
import com.kaoqin.baseframework.result.DataGridResultInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.baseframework.result.ResultDataUtil;
import com.kaoqin.baseframework.result.ResultInfo;
import com.kaoqin.domain.Courseinfo;
import com.kaoqin.service.TeacherService;
import com.kaoqin.vo.CourseinfoVO;
import com.kaoqin.vo.TeacherVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @Autowired
    private TeacherService service;


//    @RequestMapping(/s)
//    public ResultInfo getslogin(){
//
//    }

    @RequestMapping("/list")
    @ResponseBody
    public DataGridResultInfo getTecher(CourseinfoVO courseinfoVO){
        PageWrapper pageInfo =   service.listAllInfo(courseinfoVO);

        return ResultDataUtil.createQueryResult(pageInfo);


    }
}
