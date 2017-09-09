package com.wuliu.dao;

import com.wuliu.pojo.po.TbJob;
import com.wuliu.pojo.po.TbJobExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbJobMapper {
    int countByExample(TbJobExample example);

    int deleteByExample(TbJobExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbJob record);

    int insertSelective(TbJob record);

    List<TbJob> selectByExample(TbJobExample example);

    TbJob selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbJob record, @Param("example") TbJobExample example);

    int updateByExample(@Param("record") TbJob record, @Param("example") TbJobExample example);

    int updateByPrimaryKeySelective(TbJob record);

    int updateByPrimaryKey(TbJob record);
}