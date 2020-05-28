package com.kaoqin.domain;

/**
 * @author BestClever
 * @title: Dept
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 09:48
 */
public class Dept {

    private String deptId;
    private String college;
    private String professional;
    private String grade;

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
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
}
