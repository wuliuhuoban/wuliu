package com.wuliu.service.impl;

import com.wuliu.dao.TbAppointmentMapper;
import com.wuliu.pojo.po.TbAppointment;
import com.wuliu.service.AppoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @Author:fxf
 * @Date: 2017/9/9
 * @Time: 16:21
 * @Description:
 */
@Service
public class AppoinServiceImpl implements AppoinService {

    @Autowired
    private TbAppointmentMapper tbAppointmentMapper;
    @Override
    public boolean save(TbAppointment tbAppointment) {
        tbAppointment.setFlag("1");
        tbAppointment.setAppointime(new Date());
        return tbAppointmentMapper.insert(tbAppointment)>0?true:false;
    }
}
