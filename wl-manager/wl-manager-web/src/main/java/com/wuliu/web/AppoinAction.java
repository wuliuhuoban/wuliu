package com.wuliu.web;

import com.wuliu.pojo.po.TbAppointment;
import com.wuliu.service.AppoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
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
    @RequestMapping("/saveAppoin")
    public String test1(TbAppointment tbAppointment,HttpServletResponse response) throws IOException {
       if(tbAppointment.getName()!=null&& tbAppointment.getPhone()!=null)
        servcie.save(tbAppointment);
        response.getWriter().print("恭喜您预约成功");
        return "send";
    }
}
