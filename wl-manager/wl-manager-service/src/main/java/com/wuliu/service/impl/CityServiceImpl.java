package com.wuliu.service.impl;

import com.wuliu.dao.TbCityMapper;
import com.wuliu.pojo.po.TbCity;
import com.wuliu.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/9/11.
 */
@Service
public class CityServiceImpl implements CityService {
    @Autowired
    private TbCityMapper cityMapper;

    @Override
    public List<TbCity> select() {

        return cityMapper.selectByExample(null);
    }
}
