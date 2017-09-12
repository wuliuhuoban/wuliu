package com.wuliu.web;

import com.wuliu.common.dto.Order;
import com.wuliu.common.dto.Page;
import com.wuliu.common.dto.Result;
import com.wuliu.pojo.po.TbCity;
import com.wuliu.pojo.po.TbEmp;
import com.wuliu.pojo.po.TbJob;
import com.wuliu.pojo.po.TbUser;
import com.wuliu.pojo.vo.EmpQuery;
import com.wuliu.pojo.vo.TbEmpCustom;
import com.wuliu.pojo.vo.TbEmpPage;
import com.wuliu.service.CityService;
import com.wuliu.service.EmpService;
import com.wuliu.service.JobService;
import com.wuliu.service.UserService;
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
    @Autowired
    private JobService jobService;
    @Autowired
    private CityService cityService;
    @Autowired
    private UserService userService;
    @RequestMapping("/emps")
    @ResponseBody
    public Result<TbEmpPage> getpage(Page page, Order order, EmpQuery empQuery,HttpServletRequest request) {
        return empService.getList(page, order, empQuery);
    }
    @RequestMapping("emplist")
    public String getpage(HttpServletRequest request) {
        List<TbJob> jobs = jobService.select();
        List<TbCity> citys = cityService.select();
        request.setAttribute("jobs",jobs);
        request.setAttribute("citys", citys);
        return "emp-list";
    }

    @RequestMapping(value = "/emp/deleteById", method = RequestMethod.POST)
    @ResponseBody
    public int meth2(@RequestParam("ids[]") List<Integer> ids,@RequestParam("usernames[]") List<String> usernames) {
        return empService.updateEmpsByIds(ids)+userService.updateByUsernames(usernames);
    }

    @RequestMapping("emp-singer")
    public String selectByUid(HttpServletRequest request) {
        TbUser tbUser = (TbUser) request.getSession().getAttribute("user");
        TbEmpCustom tbEmp = empService.selectSingle(tbUser);
        System.err.println(tbEmp.getId());
        request.setAttribute("tbEmp", tbEmp);
        return "emp";
    }

    @RequestMapping("empedit")
    public String empedit(@RequestParam("id") int id, HttpServletRequest request) {
        TbEmpCustom tbEmp = empService.selectById(id);
        List<TbJob> jobs = jobService.select();
        List<TbCity> citys = cityService.select();
        request.setAttribute("tbEmp", tbEmp);
        request.setAttribute("jobs",jobs);
        request.setAttribute("citys",citys);
        return "emp-edit";
    }
    @RequestMapping("empEditSubmit")
    @ResponseBody
    public int empEditSubmit(TbEmp tbEmp,TbUser tbUser){
        tbUser.setId(tbEmp.getUid());
        return userService.updateUser(tbUser)+empService.updateEmp(tbEmp);
    }
}
