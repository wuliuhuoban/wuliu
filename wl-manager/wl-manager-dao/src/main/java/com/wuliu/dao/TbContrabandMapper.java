package com.wuliu.dao;

import com.wuliu.pojo.po.TbContraband;
import com.wuliu.pojo.po.TbContrabandExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbContrabandMapper {
    int countByExample(TbContrabandExample example);

    int deleteByExample(TbContrabandExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbContraband record);

    int insertSelective(TbContraband record);

    List<TbContraband> selectByExampleWithBLOBs(TbContrabandExample example);

    List<TbContraband> selectByExample(TbContrabandExample example);

    TbContraband selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbContraband record, @Param("example") TbContrabandExample example);

    int updateByExampleWithBLOBs(@Param("record") TbContraband record, @Param("example") TbContrabandExample example);

    int updateByExample(@Param("record") TbContraband record, @Param("example") TbContrabandExample example);

    int updateByPrimaryKeySelective(TbContraband record);

    int updateByPrimaryKeyWithBLOBs(TbContraband record);

    int updateByPrimaryKey(TbContraband record);
}