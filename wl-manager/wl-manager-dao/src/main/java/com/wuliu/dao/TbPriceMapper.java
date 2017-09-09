package com.wuliu.dao;

import com.wuliu.pojo.po.TbPrice;
import com.wuliu.pojo.po.TbPriceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbPriceMapper {
    int countByExample(TbPriceExample example);

    int deleteByExample(TbPriceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbPrice record);

    int insertSelective(TbPrice record);

    List<TbPrice> selectByExample(TbPriceExample example);

    TbPrice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbPrice record, @Param("example") TbPriceExample example);

    int updateByExample(@Param("record") TbPrice record, @Param("example") TbPriceExample example);

    int updateByPrimaryKeySelective(TbPrice record);

    int updateByPrimaryKey(TbPrice record);
}