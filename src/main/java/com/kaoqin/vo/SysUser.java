package com.kaoqin.vo;

/**
 * @author BestClever
 * @title: SysUser
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 11:01
 */
public class SysUser {
    private String userNo;
    private String userName;
    private String password;
    private String deptId;

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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
