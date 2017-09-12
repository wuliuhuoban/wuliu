package com.wuliu.web;

import com.wuliu.pojo.po.TbAppointment;
import com.wuliu.service.AppoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

/**
 * @Author:fxf
 * @Date: 2017/9/9
 * @Time: 16:07
 * @Description:客户预约信息处理
 */
@Controller
@Scope("prototype")
public class AppoinAction {
    @Autowired
    private AppoinService servcie;

    //新增预约客户
    @RequestMapping("/saveAppoin")
    public String test1(TbAppointment tbAppointment) throws IOException {
        if (tbAppointment.getName() != null && tbAppointment.getPhone() != null) {
            if (servcie.save(tbAppointment)) {
                return "appoinsuccess";
            }
        }
        return "send";
    }
}
