package com.kaoqin.mapper;

import com.kaoqin.vo.MyCourseVo;

import java.util.List;

/**
 * @author BestClever
 * @title: MyCourse
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 01:44
 */
public interface MyCourseMapper {

    List<MyCourseVo> listAllInfo(MyCourseVo myCourseVo);
}
