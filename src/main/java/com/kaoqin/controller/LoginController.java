package com.kaoqin.controller;

import cn.hutool.core.util.ObjectUtil;
import com.kaoqin.baseframework.enums.CommonEnum;
import com.kaoqin.baseframework.result.ResultDataUtil;
import com.kaoqin.baseframework.result.ResultInfo;
import com.kaoqin.service.StudentService;
import com.kaoqin.vo.StudentVO;
import com.kaoqin.vo.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 功能描述:进入登陆页面 <br>
 *
 * @标题: ToLoginController
 * @作者 BestClever
 * @创建时间 2018年11月4日  0004
 */

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/login")
    @ResponseBody
    public ResultInfo login(HttpServletRequest request, StudentVO studentVO) {
        StudentVO one = studentService.getOne(studentVO);
        if (ObjectUtil.isEmpty(one)) {
            return ResultDataUtil.createFail(CommonEnum.not_exist_user);
        }
        SysUser sysUser = new SysUser();
        sysUser.setUserName(one.getStudentName());
        sysUser.setDeptId(one.getDeptId());
        sysUser.setPassword(one.getPassword());
        request.getSession().setAttribute("loginUser",sysUser);
        return ResultDataUtil.createSuccess(CommonEnum.LOGIN_SUCCESS);
    }
}
