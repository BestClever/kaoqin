package com.kaoqin.mapper;


import com.kaoqin.vo.CourseinfoVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public interface TeacherMapper {
    List<CourseinfoVO>  getTeachList(String teacherNo);

}
