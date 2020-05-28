package com.kaoqin.vo;

import java.util.List;
import java.util.Map;

/**
 * 课程信息表
 */
public class CourseinfoVO   {
    private String courseNo;
    private String courseName;
    private List<TeachVO> teachVOList;

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

    public List<TeachVO> getTeachVOList() {
        return teachVOList;
    }

    public void setTeachVOList(List<TeachVO> teachVOList) {
        this.teachVOList = teachVOList;
    }
}
