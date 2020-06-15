package com.kaoqin.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kaoqin.baseframework.enums.CommonEnum;
import com.kaoqin.baseframework.result.DataGridResultInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.baseframework.result.ResultDataUtil;
import com.kaoqin.mapper.MyCourseMapper;
import com.kaoqin.service.MyAttendanceService;
import com.kaoqin.service.MyCourseService;
import com.kaoqin.vo.MyCourseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author BestClever
 * @title: MyCourseServiceImpl
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 10:17
 */
@Service
public class MyCourseServiceImpl implements MyCourseService {

    @Autowired
    private MyCourseMapper myCourseMapper;
    @Autowired
    private MyAttendanceService myAttendanceService;
    @Override
    public PageWrapper listAllInfo(MyCourseVo myCourseVo) {
        PageHelper.startPage(myCourseVo.getPage(),myCourseVo.getLimit());
        List<MyCourseVo> myCourseVos = myCourseMapper.listAllInfo(myCourseVo);
        PageInfo<MyCourseVo> pageInfo = new PageInfo<>(myCourseVos);
        PageWrapper pageWrapper = new PageWrapper();
        pageWrapper.setTotal(pageInfo.getTotal());
        pageWrapper.setList(pageInfo.getList());
        return pageWrapper;
    }

    @Override
    public int selectPasswordByCourseNo(MyCourseVo myCourseVo) {
        int i = myCourseMapper.selectPasswordByCourseNo(myCourseVo);
        if (i>0){
            int attendance = myAttendanceService.selectAttendanceByCondition(myCourseVo);
            if(attendance > 0){
                ResultDataUtil.throwExcepion(CommonEnum.HAS_CLOCK);
            }
            myAttendanceService.saveAttendance(myCourseVo);
        }else {
            ResultDataUtil.throwExcepion(CommonEnum.CONFIRMCLOCK_NOTEXIT);
        }
        return i;
    }

    public DataGridResultInfo listCourseStudent(MyCourseVo myCourseVo){
        List<MyCourseVo> myCourseVoList = myCourseMapper.listCourseStudent(myCourseVo);
        PageInfo<MyCourseVo> pageInfo = new PageInfo<>(myCourseVoList);
        PageWrapper pageWrapper = new PageWrapper();
        pageWrapper.setList(pageInfo.getList());
        pageWrapper.setTotal(pageInfo.getTotal());
        return ResultDataUtil.createQueryResult(pageWrapper);
    }
}
