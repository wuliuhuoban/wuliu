package com.wuliu.web;

import com.wuliu.common.dto.Order;
import com.wuliu.common.dto.Page;
import com.wuliu.common.dto.Result;
import com.wuliu.pojo.po.TbWaybill;
import com.wuliu.service.WaybillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author:zhouxiaoyi
 * @Date: 2017/9/6
 * @Time: 22:39
 * @Description:
 */
@Controller
@Scope("prototype")
public class WaybillAction {
    @Autowired
    private WaybillService waybillService;
    //添加订单
    @RequestMapping(value = "/waybill",method = RequestMethod.POST)
    @ResponseBody
    public int addWaybill(TbWaybill tbWaybill){
        return waybillService.addWaybill(tbWaybill);
    }

    //查询订单
    @RequestMapping("/waybills")
    @ResponseBody
    public Result<TbWaybill> getpage(Page page,Order order,TbWaybill tbWaybill) {

        return waybillService.getList(page,order,tbWaybill);
    }
    //删除订单
    @RequestMapping(value="/waybill/deleteById",method = RequestMethod.POST)
    @ResponseBody
    public int meth2(@RequestParam("ids[]") List<Integer> ids){
        System.out.println("第一个ID为:***********"+ids.get(0));
        return waybillService.updateWaybillByIds(ids);
    }

   //编辑订单的跳转
    @RequestMapping(value="/waybill-edit")
    public String meth3(Integer id,HttpServletRequest request){
        System.out.println("**********寄件人id:"+id);
        request.setAttribute("tbwaybill",waybillService.getTbWaybill(id));
        return "waybill-edit";
    }

    //编辑订单提交后执行更新
    @RequestMapping(value="/waybill/doEdit",method = RequestMethod.POST)
    @ResponseBody
    public int  meth4(TbWaybill tbWaybill){

        return waybillService.updateWaybill(tbWaybill);
    }
}
