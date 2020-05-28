package com.kaoqin.mapper;

import com.kaoqin.vo.AttendanceVo;
import com.kaoqin.vo.MyCourseVo;

import java.util.List;

/**
 * @author BestClever
 * @title: AttendanceMapper
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 18:36
 */
public interface AttendanceMapper {

    int selectAttendanceByCondition(MyCourseVo myCourseVo);

    void saveAttendance(AttendanceVo attendanceVo);

    List<AttendanceVo> selectListStudentInfo(AttendanceVo attendanceVo);
}
