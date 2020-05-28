package com.kaoqin.domain;

/**
 * @author BestClever
 * @title: Take
 * @projectName kaoqin
 * @description: 选课 实体类
 * @date 2020-05-28 08:50
 */
public class Take {

    private String studentNo;
    private String courseNo;
    private String courseName;

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
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
}
