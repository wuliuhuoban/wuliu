package com.wuliu.service.impl;

import com.wuliu.dao.TbUserMapper;
import com.wuliu.dao.TbUserMapperCustom;
import com.wuliu.pojo.po.TbUser;
import com.wuliu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/9/6.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private TbUserMapperCustom tbUserMapperCustom;

    @Autowired
    private TbUserMapper tbUserMapper;
    @Override
    @Transactional
    public int insertUser(TbUser user) {

        List<TbUser> list = tbUserMapperCustom.selectByUsername(user.getUsername());
        if (list.size() == 0||list==null) {
            user.setFlag("1");
            return tbUserMapper.insert(user);
        } else {
           return 0;
        }

    }

    @Override
    public TbUser login(TbUser user) {

        List<TbUser> list = tbUserMapperCustom.selectByUser(user);
        if (list.size() == 1) {
            return list.get(0);
        } else {
            return null;
        }
    }
}
