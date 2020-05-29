package com.kaoqin.service;

import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.vo.AttendanceVo;
import com.kaoqin.vo.MyCourseVo;
import org.apache.ibatis.annotations.Select;

/**
 * @author BestClever
 * @title: MyAttendanceService
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 18:44
 */
public interface MyAttendanceService {

    int selectAttendanceByCondition(MyCourseVo myCourseVo);

    void saveAttendance(MyCourseVo myCourseVo);

    PageWrapper listStudentInfo(AttendanceVo attendanceVo);
}
