package com.kaoqin.mapper;

import com.kaoqin.vo.AttendanceVo;

/**
 * @author BestClever
 * @title: AttendanceMapper
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 18:36
 */
public interface AttendanceMapper {

    int saveAttendance(AttendanceVo attendanceVo);
}
