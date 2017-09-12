package com.wuliu.dao;

import com.wuliu.pojo.vo.TbEmpCustom;

/**
 * Created by Administrator on 2017/9/7.
 */
public interface TbEmpMapperCustom {
    TbEmpCustom selectSingle(int id);
    TbEmpCustom selectById(int id);
}
