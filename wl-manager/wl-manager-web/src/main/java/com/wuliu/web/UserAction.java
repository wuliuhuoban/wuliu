package com.wuliu.web;

import com.wuliu.pojo.po.TbUser;
import com.wuliu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/9/5.
 */
@Controller
@Scope("prototype")
public class UserAction {
    @Autowired
    private UserService service;
    @RequestMapping("login")
    public String login(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        TbUser tbUser = new TbUser();
        tbUser.setUsername(username);
        tbUser.setPassword(password);
        TbUser user = service.login(tbUser);
        if (tbUser!=null){
            request.getSession().setAttribute("user",user);
            System.out.println(user.getId());
            request.setAttribute("msg",null);
            return "background";
        }
        request.setAttribute("msg","账号或密码错误");
        return "loginForm";
    }
    @RequestMapping("insertUser")
    @ResponseBody
    public int insertUser(TbUser user){
        return service.insertUser(user);
    }
}
