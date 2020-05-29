package com.kaoqin.service.impl;

import cn.hutool.core.lang.UUID;
import cn.hutool.core.util.IdUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.mapper.AttendanceMapper;
import com.kaoqin.service.MyAttendanceService;
import com.kaoqin.vo.AttendanceVo;
import com.kaoqin.vo.MyCourseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author BestClever
 * @title: MyAttendanceServiceImpl
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 18:44
 */
@Service
public class MyAttendanceServiceImpl implements MyAttendanceService {

    @Autowired
    private AttendanceMapper attendanceMapper;

    @Override
    public int selectAttendanceByCondition(MyCourseVo myCourseVo) {
        return attendanceMapper.selectAttendanceByCondition(myCourseVo);
    }

    @Override
    public void saveAttendance(MyCourseVo myCourseVo) {
        AttendanceVo attendanceVo = new AttendanceVo();
        attendanceVo.setAttendanceNo(IdUtil.simpleUUID());
        attendanceVo.setCoruseNo(myCourseVo.getCourseNo());
        attendanceVo.setStudentNo(myCourseVo.getStudentNo());
        attendanceVo.setStudentName(myCourseVo.getStudentName());
        attendanceMapper.saveAttendance(attendanceVo);
    }

    @Override
    public PageWrapper listStudentInfo(AttendanceVo attendanceVo) {
        PageHelper.startPage(attendanceVo.getPage(),attendanceVo.getLimit());
        List<AttendanceVo> attendanceVoList = attendanceMapper.selectListStudentInfo(attendanceVo);
        PageInfo<AttendanceVo> pageInfo = new PageInfo<>(attendanceVoList);
        PageWrapper pageWrapper = new PageWrapper();
        pageWrapper.setTotal(pageInfo.getTotal());
        pageWrapper.setList(pageInfo.getList());
        return pageWrapper;
    }
}
