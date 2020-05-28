package com.kaoqin.service;

import com.kaoqin.vo.CourseinfoVO;

import java.util.List;

public interface TeacherService {
    List<CourseinfoVO> getTeachList(String teacherNo);
}
