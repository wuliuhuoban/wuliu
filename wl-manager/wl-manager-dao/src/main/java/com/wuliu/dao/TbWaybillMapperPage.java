package com.wuliu.dao;

import com.wuliu.pojo.po.TbWaybill;

import java.util.List;
import java.util.Map;

public interface TbWaybillMapperPage {//补充的抽象方法
    //查询总数
    long selectTotal(Map<String, Object> map);

    //查询一页数据
    List<TbWaybill> selectWaybillByPage(Map<String, Object> map);
}