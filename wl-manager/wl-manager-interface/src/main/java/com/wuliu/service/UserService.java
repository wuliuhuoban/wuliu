package com.wuliu.service;

import com.wuliu.pojo.po.TbUser;

import java.util.List;

/**
 * Created by Administrator on 2017/9/6.
 */
public interface UserService {
    TbUser login(TbUser user);
    int insertUser(TbUser user);

    int updateUser(TbUser tbUser);

    int updateByUsernames(List<String> usernames);
}
