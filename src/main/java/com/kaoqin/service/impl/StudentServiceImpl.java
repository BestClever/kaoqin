package com.kaoqin.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.kaoqin.domain.Student;
import com.kaoqin.mapper.StudentMapper;
import com.kaoqin.service.StudentService;
import com.kaoqin.vo.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author BestClever
 * @title: StudentServiceImpl
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-27 17:10
 */
@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public StudentVO getOne(StudentVO studentVO) {

        return studentMapper.getOne(studentVO);
    }

    @Override
    public int saveStudnet(StudentVO studentVO) {
        Student student = new Student();
        BeanUtil.copyProperties(studentVO, student);
        return studentMapper.saveStudent(student);
    }
}
