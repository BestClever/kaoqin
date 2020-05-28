package com.kaoqin.vo;

/**
 * @author BestClever
 * @title: AttendanceVo
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 17:21
 */
public class AttendanceVo {
    private String attendanceNo;
    private String studentNo;
    private String studentName;
    private String coruseNo;
    private String attendanceMemo;
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private int page=1;//代表当前页码
    private int limit=10;//代表每页数据量

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

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }
}
