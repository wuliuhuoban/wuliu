package com.wuliu.service;

import com.wuliu.common.dto.Order;
import com.wuliu.common.dto.Page;
import com.wuliu.common.dto.Result;
import com.wuliu.pojo.po.TbEmp;
import com.wuliu.pojo.po.TbUser;
import com.wuliu.pojo.vo.EmpQuery;
import com.wuliu.pojo.vo.TbEmpCustom;
import com.wuliu.pojo.vo.TbEmpPage;

import java.util.List;

/**
 * Created by Administrator on 2017/9/6 0006.
 */
public interface EmpService {
    Result<TbEmpPage> getList(Page page, Order order, EmpQuery empQuery);

    int updateEmpsByIds(List<Integer> ids);

    TbEmpCustom selectSingle(TbUser tbUser);

    TbEmpCustom selectById(int id);

    int updateEmp(TbEmp tbEmp);
}
