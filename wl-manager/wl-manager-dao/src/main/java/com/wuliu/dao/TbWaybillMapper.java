package com.wuliu.dao;

import com.wuliu.pojo.po.TbWaybill;
import com.wuliu.pojo.po.TbWaybillExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbWaybillMapper {
    int countByExample(TbWaybillExample example);

    int deleteByExample(TbWaybillExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbWaybill record);

    int insertSelective(TbWaybill record);

    List<TbWaybill> selectByExampleWithBLOBs(TbWaybillExample example);

    List<TbWaybill> selectByExample(TbWaybillExample example);

    TbWaybill selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbWaybill record, @Param("example") TbWaybillExample example);

    int updateByExampleWithBLOBs(@Param("record") TbWaybill record, @Param("example") TbWaybillExample example);

    int updateByExample(@Param("record") TbWaybill record, @Param("example") TbWaybillExample example);

    int updateByPrimaryKeySelective(TbWaybill record);

    int updateByPrimaryKeyWithBLOBs(TbWaybill record);

    int updateByPrimaryKey(TbWaybill record);
}