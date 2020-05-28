package com.kaoqin.domain;

/**
 * @author BestClever
 * @title: Student
 * @projectName kaoqin
 * @description: 学生 实体类
 * @date 2020-05-27 16:56
 */
public class Student {
    private String studentNo;
    private String studentName;
    private String password;
    private String deptId;

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

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }
}
