package com.wuliu.dao;

import com.wuliu.pojo.vo.TbEmpPage;

import java.util.List;
import java.util.Map;

public interface TbEmpMapperPage {//补充的抽象方法
    //查询总数
    long selectTotal(Map<String, Object> map);

    //查询一页数据
    List<TbEmpPage> selectEmpByPage(Map<String, Object> map);
}