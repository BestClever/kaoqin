package com.kaoqin.service;

import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.domain.Teacher;
import com.kaoqin.vo.CourseinfoVO;
import com.kaoqin.vo.MyCourseVo;
import com.kaoqin.vo.TeacherVO;

import java.util.List;

public interface TeacherService {
    PageWrapper listAllInfo(CourseinfoVO courseinfoVO);
}
