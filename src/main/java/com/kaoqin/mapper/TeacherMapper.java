package com.kaoqin.mapper;


import com.kaoqin.domain.Teacher;
import com.kaoqin.vo.CourseinfoVO;
import com.kaoqin.vo.MyCourseVo;
import com.kaoqin.vo.StudentVO;
import com.kaoqin.vo.TeacherVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public interface TeacherMapper {

    List<CourseinfoVO> listAllInfo(CourseinfoVO courseinfoVO);

    void updateVommand(CourseinfoVO courseinfoVO);

    TeacherVO getOne(StudentVO studentVO);

    int saveStudent(Teacher teacher);
}
