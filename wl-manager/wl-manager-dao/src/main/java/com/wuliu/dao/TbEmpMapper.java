package com.wuliu.dao;

import com.wuliu.pojo.po.TbEmp;
import com.wuliu.pojo.po.TbEmpExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbEmpMapper {
    int countByExample(TbEmpExample example);

    int deleteByExample(TbEmpExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbEmp record);

    int insertSelective(TbEmp record);

    List<TbEmp> selectByExample(TbEmpExample example);

    TbEmp selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbEmp record, @Param("example") TbEmpExample example);

    int updateByExample(@Param("record") TbEmp record, @Param("example") TbEmpExample example);

    int updateByPrimaryKeySelective(TbEmp record);

    int updateByPrimaryKey(TbEmp record);
}