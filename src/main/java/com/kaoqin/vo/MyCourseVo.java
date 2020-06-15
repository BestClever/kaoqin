package com.kaoqin.vo;

/**
 * @author BestClever
 * @title: MyCourse
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 01:47
 */
public class MyCourseVo {

    private String studentNo;
    private String studentName;
    private String courseNo;
    private String courseName;
    private String teacherName;
    private String coursePassword;
    private String college;
    private String professional;
    private String grade;

    private String attendanceNum; //打卡数量

    private int page=1;//代表当前页码
    private int limit=10;//代表每页数据量

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

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getCourseNo() {
        return courseNo;
    }

    public void setCourseNo(String courseNo) {
        this.courseNo = courseNo;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCoursePassword() {
        return coursePassword;
    }

    public void setCoursePassword(String coursePassword) {
        this.coursePassword = coursePassword;
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

    public String getAttendanceNum() {
        return attendanceNum;
    }

    public void setAttendanceNum(String attendanceNum) {
        this.attendanceNum = attendanceNum;
    }
}
