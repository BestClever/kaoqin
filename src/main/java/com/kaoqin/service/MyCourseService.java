package com.kaoqin.service;

import com.github.pagehelper.PageInfo;
import com.kaoqin.baseframework.result.PageWrapper;
import com.kaoqin.vo.MyCourseVo;

import java.util.List;

/**
 * @author BestClever
 * @title: MyCourseService
 * @projectName kaoqin
 * @description: TODO
 * @date 2020-05-28 10:17
 */
public interface MyCourseService {

    PageWrapper listAllInfo(MyCourseVo myCourseVo);

    int selectPasswordByCourseNo(MyCourseVo myCourseVo);
}
