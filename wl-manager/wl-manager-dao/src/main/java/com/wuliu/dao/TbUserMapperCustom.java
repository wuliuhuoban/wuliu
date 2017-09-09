package com.wuliu.dao;

import com.wuliu.pojo.po.TbUser;

import java.util.List;

/**
 * Created by Administrator on 2017/9/6.
 */
public interface TbUserMapperCustom {
    List<TbUser> selectByUser(TbUser user);
    List<TbUser> selectByUsername(String username);
}
