package com.kaoqin.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.domain.Courseinfo;
import com.kaoqin.domain.Student;
import com.kaoqin.domain.Teach;
import com.kaoqin.domain.Teacher;
import com.kaoqin.mapper.TeacherMapper;
import com.kaoqin.service.TeacherService;
import com.kaoqin.vo.*;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class TeacherServiceImpl  implements TeacherService {
    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public PageWrapper listAllInfo(CourseinfoVO courseinfoVO) {
        PageHelper.startPage(courseinfoVO.getPage(),courseinfoVO.getLimit());
        List<CourseinfoVO> courseinfoVOS = teacherMapper.listAllInfo(courseinfoVO);
        PageInfo<CourseinfoVO> pageInfo = new PageInfo<>(courseinfoVOS);
        PageWrapper pageWrapper = new PageWrapper();
        pageWrapper.setTotal(pageInfo.getTotal());
        pageWrapper.setList(pageInfo.getList());
        return pageWrapper;
    }

    @Override
    public void confirmClock(CourseinfoVO courseinfoVO) {
        teacherMapper.updateVommand(courseinfoVO);
    }

    @Override
    public PageWrapper getAttendance(CourseinfoVO courseinfoVO) {

        PageHelper.startPage(courseinfoVO.getPage(),courseinfoVO.getLimit());
        List<CourseinfoVO> courseinfoVOS = teacherMapper.listAllInfo(courseinfoVO);
        PageInfo<CourseinfoVO> pageInfo = new PageInfo<>(courseinfoVOS);
        PageWrapper pageWrapper = new PageWrapper();
        pageWrapper.setTotal(pageInfo.getTotal());
        pageWrapper.setList(pageInfo.getList());
        return pageWrapper;
    }

    @Override
    public TeacherVO getOne(StudentVO studentVO) {
        return teacherMapper.getOne(studentVO);
    }

    @Override
    public int saveStudnet(TeacherVO teacherVO) {
        Teacher teacher = new Teacher();
        BeanUtil.copyProperties(teacherVO, teacher);
        return teacherMapper.saveStudent(teacher);

    }

    @Override
    public void upstudents(AttendanceVo attendanceVo) {
        if (attendanceVo.getAttendanceMemo() == null ){

            teacherMapper.upstudents(attendanceVo);
        }
        teacherMapper.upstudentss(attendanceVo);
    }
}
