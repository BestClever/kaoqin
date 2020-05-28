package com.kaoqin.domain;

/**
 * @author BestClever
 * @title: Course
 * @projectName kaoqin
 * @description: 课程实体类
 * @date 2020-05-28 01:45
 */
public class Course {
    private String courseNo;
    private String courseName;
    private String courssePassword;
    private String deptId;

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
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

    public String getCourssePassword() {
        return courssePassword;
    }

    public void setCourssePassword(String courssePassword) {
        this.courssePassword = courssePassword;
    }
}
