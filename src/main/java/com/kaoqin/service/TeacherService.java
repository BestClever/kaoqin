package com.kaoqin.service;

import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.domain.Teacher;
import com.kaoqin.vo.*;

import java.util.List;

public interface TeacherService {
    PageWrapper listAllInfo(CourseinfoVO courseinfoVO);

    void confirmClock(CourseinfoVO courseinfoVO);

    PageWrapper getAttendance(CourseinfoVO courseinfoVO);

    TeacherVO getOne(StudentVO studentVO);

    int saveStudnet(TeacherVO teacherVO);

    void upstudents(AttendanceVo attendanceVo);

}
