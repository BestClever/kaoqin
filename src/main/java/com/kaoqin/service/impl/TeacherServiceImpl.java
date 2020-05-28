package com.kaoqin.service.impl;

import com.kaoqin.domain.Courseinfo;
import com.kaoqin.domain.Teach;
import com.kaoqin.domain.Teacher;
import com.kaoqin.mapper.TeacherMapper;
import com.kaoqin.service.TeacherService;
import com.kaoqin.vo.CourseinfoVO;
import com.kaoqin.vo.TeachVO;
import com.kaoqin.vo.TeacherVO;
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
    public  List<CourseinfoVO> getTeachList(String teacherNo) {

        CourseinfoVO courseinfo = new CourseinfoVO();
        List<CourseinfoVO> mapList =  teacherMapper.getTeachList(teacherNo);


        return mapList;
    }
}
