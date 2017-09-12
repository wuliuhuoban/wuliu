package com.wuliu.service.impl;

import com.wuliu.dao.TbEmpMapper;
import com.wuliu.dao.TbUserMapper;
import com.wuliu.dao.TbUserMapperCustom;
import com.wuliu.pojo.po.TbEmp;
import com.wuliu.pojo.po.TbUser;
import com.wuliu.pojo.po.TbUserExample;
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

    @Autowired
    private TbEmpMapper tbEmpMapper;
    @Override
    @Transactional
    public int updateUser(TbUser tbUser) {

        return tbUserMapper.updateByPrimaryKeySelective(tbUser);
    }

    @Override
    public int updateByUsernames(List<String> usernames) {
        TbUser user = new TbUser();
        user.setFlag("2");
        TbUserExample example = new TbUserExample();
        TbUserExample.Criteria criteria=example.createCriteria();
        criteria.andUsernameIn(usernames);
        return tbUserMapper.updateByExampleSelective(user,example);
    }

    @Override
    @Transactional
    public int insertUser(TbUser user) {
        List<TbUser> list = tbUserMapperCustom.selectByUsername(user.getUsername());
        if (list.size() == 0||list==null) {
            user.setFlag("1");
            int a = tbUserMapper.insert(user);
            int uid = tbUserMapperCustom.selectByUsername(user.getUsername()).get(0).getId();
            int status = Integer.parseInt(user.getFlag());
            TbEmp tbEmp = new TbEmp();
            tbEmp.setUid(uid);
            tbEmp.setFlag("1");
            tbEmp.setStatus(status);
            tbEmpMapper.insert(tbEmp);
            return a;
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
