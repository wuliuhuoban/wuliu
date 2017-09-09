package com.wuliu.dao;

import com.wuliu.pojo.po.TbEmployment;
import com.wuliu.pojo.po.TbEmploymentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbEmploymentMapper {
    int countByExample(TbEmploymentExample example);

    int deleteByExample(TbEmploymentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbEmployment record);

    int insertSelective(TbEmployment record);

    List<TbEmployment> selectByExample(TbEmploymentExample example);

    TbEmployment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbEmployment record, @Param("example") TbEmploymentExample example);

    int updateByExample(@Param("record") TbEmployment record, @Param("example") TbEmploymentExample example);

    int updateByPrimaryKeySelective(TbEmployment record);

    int updateByPrimaryKey(TbEmployment record);
}