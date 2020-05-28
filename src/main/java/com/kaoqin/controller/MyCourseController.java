package com.kaoqin.controller;

import com.kaoqin.baseframework.enums.CommonEnum;
import com.kaoqin.baseframework.result.DataGridResultInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.baseframework.result.ResultDataUtil;
import com.kaoqin.baseframework.result.ResultInfo;
import com.kaoqin.service.MyCourseService;
import com.kaoqin.vo.MyCourseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author BestClever
 * @title: MyCourse
 * @projectName kaoqin
 * @description: 我的课程
 * @date 2020-05-28 09:18
 */
@Controller
@RequestMapping(value = "/myCourse")
public class MyCourseController {

    @Autowired
    private MyCourseService myCourseService;


    @RequestMapping(value = "/list")
    @ResponseBody
    public DataGridResultInfo list(MyCourseVo myCourseVo) {
        PageWrapper pageInfo = myCourseService.listAllInfo(myCourseVo);
        return ResultDataUtil.createQueryResult(pageInfo);
    }

    @RequestMapping(value = "/confirmClock")
    @ResponseBody
    public ResultInfo confirmClock(MyCourseVo myCourseVo) {
        //比对 是否 口令正确
        int i = myCourseService.selectPasswordByCourseNo(myCourseVo);
        if (i < 0) {
            return ResultDataUtil.createFail(CommonEnum.CONFIRMCLOCK_FAILUER);
        }
        //在考勤表中新增一条数据
        return ResultDataUtil.createSuccess(CommonEnum.CONFIRMCLOCK_SUCCESS);
    }
}
