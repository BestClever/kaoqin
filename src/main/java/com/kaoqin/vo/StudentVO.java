package com.kaoqin.vo;

/**
 * @author BestClever
 * @title: StudentVO
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-27 17:00
 */
public class StudentVO {
    private String studentNo;
    private String studentName;
    private String password;
    private String college;
    private String professional;
    private String grade;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
