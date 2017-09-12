package com.wuliu.service.impl;

import com.wuliu.common.dto.Order;
import com.wuliu.common.dto.Page;
import com.wuliu.common.dto.Result;
import com.wuliu.dao.TbWaybillMapper;
import com.wuliu.dao.TbWaybillMapperPage;
import com.wuliu.pojo.po.TbWaybill;
import com.wuliu.pojo.po.TbWaybillExample;
import com.wuliu.service.WaybillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/9/9 0009.
 */
@Service
public class WaybillServiceImp implements WaybillService {
    @Autowired
    private TbWaybillMapper tbWaybillMapper;//自动生成的dao层接口
    @Autowired
    private TbWaybillMapperPage tbWaybillMapperPage;//对dao层接口的拓展

    @Override
    public int updateWaybill(TbWaybill tbWaybill) {
        return tbWaybillMapper.updateByPrimaryKeyWithBLOBs(tbWaybill);
    }

    @Override
    public TbWaybill getTbWaybill(Integer id) {
        return tbWaybillMapper.selectByPrimaryKey(id);
    }

    @Override
    public Result<TbWaybill> getList(Page page, Order order, TbWaybill tbWaybill) {
        Map<String,Object> map = new HashMap<>();
        map.put("page",page);
        map.put("order",order);
        map.put("tbWaybill",tbWaybill);
        List<TbWaybill> list = tbWaybillMapperPage.selectWaybillByPage(map);
        long total = tbWaybillMapperPage.selectTotal(map);
        Result<TbWaybill> result = new Result<>();
        result.setRows(list);
        result.setTotal(total);
        return result;
    }

    @Override
    public int updateWaybillByIds(List<Integer> ids) {
        TbWaybill record = new TbWaybill();
        record.setFlag("2");
        TbWaybillExample example = new TbWaybillExample();
        TbWaybillExample.Criteria criteria=example.createCriteria();
        criteria.andIdIn(ids);

        return tbWaybillMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int addWaybill(TbWaybill tbWaybill) {
        tbWaybill.setStatus(0);
        String time = ""+(8800000000000000L+System.currentTimeMillis());
        tbWaybill.setWaybill(time);
        tbWaybill.setFlag("1");
        return tbWaybillMapper.insert(tbWaybill);
    }
}
