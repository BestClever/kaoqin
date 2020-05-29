package com.kaoqin.baseframework.enums;


import com.kaoqin.baseframework.exception.BaseInfoInterface;

/**
 * halfsummer
 *
 * @author pancm
 * @Title: CommonEnum
 * @Description: 公用描述枚举类
 * @Version:1.0.0
 * @date 2018年6月25日
 */
public enum CommonEnum implements BaseInfoInterface {
    // 数据操作错误定义
    SUCCESS(200, "成功!"),
    BODY_NOT_MATCH(400, "请求的数据格式不符!"),
    SIGNATURE_NOT_MATCH(401, "请求的数字签名不匹配!"),
    NOT_FOUND(404, "未找到该资源!"),
    INTERNAL_SERVER_ERROR(500, "服务器内部错误!"),
    SERVER_BUSY(503, "服务器正忙，请稍后再试!"),
    ARITHMETIC_ERROR(1100, "数学运算错误!"),

    /*登录*/
    LOGIN_SUCCESS_STUDENT(9001, "学生登录成功！"),
    LOGIN_SUCCESS_TEACHER(9011, "老师登录成功！"),
    LOGIN_FAILURE(9051, "登录失败"),

    LOGOUT_SUCCESS(9101, "退出成功！"),
    LOGOUT_FAILURE(9151, "退出失败！"),
    /*注册*/
    REGISTER_SUCCESS_STUDENT(9201, "学生注册成功！"),
    REGISTER_FAILUER_STUDENT(9202,"学生注册失败！"),
    REGISTER_FAILUER_REPEAT(9202,"学生注册失败，已存在账号了！"),
    REGISTER_SUCCESS_TEACHER(9211, "老师注册成功！"),
    REGISTER_FAILUER_TEACHER(9212, "老师注册失败！"),
    REGISTER_FAILUER(9251, "注册失败！"),

    /**/

    COURSE_SELECT_SUCESS(2011, "我的课程查询成功！"),
    CONFIRMCLOCK_SUCCESS(2101,"打卡成功"),

    CONFIRMCLOCK_FAILUER(2151,"打卡失败"),
    CONFIRMCLOCK_NOTEXIT(2151,"口令错误"),

    HAS_CLOCK(2030,"已经完成打卡"),

    NOT_EXIST_USER(2000, "用户名或密码错误");

    /**
     * 错误码
     */
    private Integer resultCode;

    /**
     * 错误描述
     */
    private String resultMsg;

    CommonEnum(Integer resultCode, String resultMsg) {
        this.resultCode = resultCode;
        this.resultMsg = resultMsg;
    }

    @Override
    public Integer getResultCode() {
        return resultCode;
    }

    @Override
    public String getResultMsg() {
        return resultMsg;
    }

}
