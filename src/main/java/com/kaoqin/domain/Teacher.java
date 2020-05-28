package com.kaoqin.domain;

import com.kaoqin.vo.CourseinfoVO;

import java.util.List;

/**
 * 教师类
 */
public class Teacher {
    private String teacherNo;
    private String teacherName;
    private String courseName;

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

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }


}
