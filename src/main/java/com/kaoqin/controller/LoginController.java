package com.kaoqin.controller;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
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
        if (StrUtil.equals("1", studentVO.getRole())) {
            //教师 查询数据库
            return ResultDataUtil.createSuccess(CommonEnum.LOGIN_SUCCESS_TEACHER);
        } else if (StrUtil.equals("2", studentVO.getRole())) {
            StudentVO one = studentService.getOne(studentVO);
            if (ObjectUtil.isEmpty(one)) {
                return ResultDataUtil.createFail(CommonEnum.NOT_EXIST_USER);
            }
            SysUser sysUser = new SysUser();
            sysUser.setUserName(one.getStudentName());
            sysUser.setDeptId(one.getDeptId());
            sysUser.setPassword(one.getPassword());
            request.getSession().setAttribute("loginUser", sysUser);
            return ResultDataUtil.createSuccess(CommonEnum.LOGIN_SUCCESS_STUDENT);
        }
        return ResultDataUtil.createSuccess(CommonEnum.LOGIN_FAILURE);

    }

    @RequestMapping(value = "/register")
    @ResponseBody
    public ResultInfo register(StudentVO studentVO) {
        if (StrUtil.equals("1", studentVO.getRole())) {
        } else if (StrUtil.equals("2", studentVO.getRole())) {

            StudentVO one = studentService.getOne(studentVO);
            if (ObjectUtil.isEmpty(one)) {
                return ResultDataUtil.createFail(CommonEnum.REGISTER_FAILUER_REPEAT);
            }
            int i = studentService.saveStudnet(studentVO);
            if (i > 0) {
                return ResultDataUtil.createSuccess(CommonEnum.REGISTER_SUCCESS_STUDENT);
            } else {
                return ResultDataUtil.createFail(CommonEnum.REGISTER_FAILUER_STUDENT);
            }
        }
        return ResultDataUtil.createFail(CommonEnum.REGISTER_FAILUER);
    }
}
