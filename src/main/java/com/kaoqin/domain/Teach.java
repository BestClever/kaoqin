package com.kaoqin.domain;

/**
 * @author BestClever
 * @title: Teach
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 09:13
 */
public class Teach {
    private String teacherNo;
    private String teacherName;
    private String courseNo;
    private String courseName;
    private String deptId;

    public String getTeacherNo() {
        return teacherNo;
    }

    public void setTeacherNo(String teacherNo) {
        this.teacherNo = teacherNo;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
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

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }
}
