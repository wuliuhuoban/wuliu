package com.wuliu.service.impl;

import com.wuliu.dao.TbJobMapper;
import com.wuliu.pojo.po.TbJob;
import com.wuliu.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/9/11.
 */
@Service
public class JobServiceImpl implements JobService {
    @Autowired
    private TbJobMapper jobMapper;
    @Override
    public List<TbJob> select() {
        return jobMapper.selectByExample(null);
    }
}
