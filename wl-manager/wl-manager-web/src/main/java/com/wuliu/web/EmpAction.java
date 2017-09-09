package com.wuliu.web;

import com.wuliu.common.dto.Order;
import com.wuliu.common.dto.Page;
import com.wuliu.common.dto.Result;
import com.wuliu.pojo.po.TbUser;
import com.wuliu.pojo.vo.EmpQuery;
import com.wuliu.pojo.vo.TbEmpCustom;
import com.wuliu.pojo.vo.TbEmpPage;
import com.wuliu.service.EmpService;
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
public class EmpAction {
    @Autowired
    private EmpService empService;
    @RequestMapping("/emps")
    @ResponseBody
    public Result<TbEmpPage> getpage(Page page,Order order,EmpQuery empQuery) {
        return empService.getList(page,order,empQuery);
    }
    @RequestMapping(value="/emp/deleteById",method = RequestMethod.POST)
    @ResponseBody
    public int meth2(@RequestParam("ids[]") List<Integer> ids){
        System.out.println("第一个ID为:***********"+ids.get(0));
        return empService.updateEmpsByIds(ids);
    }
    @RequestMapping("emp-singer")
    public String selectByUid(HttpServletRequest request){
        TbUser tbUser = (TbUser)request.getSession().getAttribute("user");
        TbEmpCustom tbEmp = empService.selectSingle(tbUser);
        request.setAttribute("tbEmp",tbEmp);
        return "emp";
    }
}
