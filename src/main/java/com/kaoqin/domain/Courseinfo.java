package com.kaoqin.domain;

import com.kaoqin.vo.TeachVO;

import java.util.List;

/**
 * 课程信息表
 */
public class Courseinfo {
    private String courseNo;
    private String coursename;
    private List<TeachVO> teachVOList;

    public String getCourseNo() {
        return courseNo;
    }

    public void setCourseNo(String courseNo) {
        this.courseNo = courseNo;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public List<TeachVO> getTeachVOList() {
        return teachVOList;
    }

    public void setTeachVOList(List<TeachVO> teachVOList) {
        this.teachVOList = teachVOList;
    }
}
