package com.kaoqin.mapper;

import com.kaoqin.domain.Student;
import com.kaoqin.vo.StudentVO;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author BestClever
 * @title: UserMapper
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-27 16:50
 */

public interface StudentMapper {

    StudentVO getOne(StudentVO studentVO);
}
