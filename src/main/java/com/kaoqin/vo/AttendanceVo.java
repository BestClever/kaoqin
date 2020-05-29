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
    private String courseName;
    private String attendanceMemo;
    private String password;
    private String courseNo;

    private String teacherName;
    private String courssePassword;
    private String college;
    private String professional;
    private String grade;

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

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getAttendanceMemo() {
        return attendanceMemo;
    }

    public void setAttendanceMemo(String attendanceMemo) {
        this.attendanceMemo = attendanceMemo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCourseNo() {
        return courseNo;
    }

    public void setCourseNo(String courseNo) {
        this.courseNo = courseNo;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getCourssePassword() {
        return courssePassword;
    }

    public void setCourssePassword(String courssePassword) {
        this.courssePassword = courssePassword;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
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
