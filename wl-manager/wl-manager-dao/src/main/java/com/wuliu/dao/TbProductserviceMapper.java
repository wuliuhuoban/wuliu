package com.wuliu.dao;

import com.wuliu.pojo.po.TbProductservice;
import com.wuliu.pojo.po.TbProductserviceExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbProductserviceMapper {
    int countByExample(TbProductserviceExample example);

    int deleteByExample(TbProductserviceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbProductservice record);

    int insertSelective(TbProductservice record);

    List<TbProductservice> selectByExampleWithBLOBs(TbProductserviceExample example);

    List<TbProductservice> selectByExample(TbProductserviceExample example);

    TbProductservice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbProductservice record, @Param("example") TbProductserviceExample example);

    int updateByExampleWithBLOBs(@Param("record") TbProductservice record, @Param("example") TbProductserviceExample example);

    int updateByExample(@Param("record") TbProductservice record, @Param("example") TbProductserviceExample example);

    int updateByPrimaryKeySelective(TbProductservice record);

    int updateByPrimaryKeyWithBLOBs(TbProductservice record);

    int updateByPrimaryKey(TbProductservice record);
}