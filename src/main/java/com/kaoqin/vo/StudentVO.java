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
    private String deptId;

    private String role;

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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
