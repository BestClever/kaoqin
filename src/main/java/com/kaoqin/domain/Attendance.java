package com.kaoqin.domain;

/**
 * @author BestClever
 * @title: Attendance
 * @projectName kaoqin
 * @description: 考勤表
 * @date 2020-05-28 17:18
 */
public class Attendance {

    private String attendanceNo;
    private String studentNo;
    private String studentName;
    private String coruseNo;
    private String attendanceMemo;

    public String getAttendanceNo() {
        return attendanceNo;
    }

    public void setAttendanceNo(String attendanceNo) {
        this.attendanceNo = attendanceNo;
    }

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getCoruseNo() {
        return coruseNo;
    }

    public void setCoruseNo(String coruseNo) {
        this.coruseNo = coruseNo;
    }

    public String getAttendanceMemo() {
        return attendanceMemo;
    }

    public void setAttendanceMemo(String attendanceMemo) {
        this.attendanceMemo = attendanceMemo;
    }
}
