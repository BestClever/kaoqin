package com.kaoqin.vo;

import java.util.List;

/**
 * 教师类
 */
public class TeacherVO {
    private String teacherNo;
    private String teacherName;
    private String courseName;
    private CourseinfoVO courseinfoVO;
    private int page=1;//代表当前页码
    private int limit=10;//代表每页数据量


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

    public CourseinfoVO getCourseinfoVO() {
        return courseinfoVO;
    }

    public void setCourseinfoVO(CourseinfoVO courseinfoVO) {
        this.courseinfoVO = courseinfoVO;
    }
}
