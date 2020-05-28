package com.kaoqin.mapper;


import com.kaoqin.domain.Teacher;
import com.kaoqin.vo.CourseinfoVO;
import com.kaoqin.vo.MyCourseVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public interface TeacherMapper {

    List<CourseinfoVO> listAllInfo(CourseinfoVO courseinfoVO);
}
