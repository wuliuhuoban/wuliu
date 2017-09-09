package com.wuliu.dao;

import com.wuliu.pojo.po.TbEnterprise;
import com.wuliu.pojo.po.TbEnterpriseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbEnterpriseMapper {
    int countByExample(TbEnterpriseExample example);

    int deleteByExample(TbEnterpriseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbEnterprise record);

    int insertSelective(TbEnterprise record);

    List<TbEnterprise> selectByExampleWithBLOBs(TbEnterpriseExample example);

    List<TbEnterprise> selectByExample(TbEnterpriseExample example);

    TbEnterprise selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbEnterprise record, @Param("example") TbEnterpriseExample example);

    int updateByExampleWithBLOBs(@Param("record") TbEnterprise record, @Param("example") TbEnterpriseExample example);

    int updateByExample(@Param("record") TbEnterprise record, @Param("example") TbEnterpriseExample example);

    int updateByPrimaryKeySelective(TbEnterprise record);

    int updateByPrimaryKeyWithBLOBs(TbEnterprise record);

    int updateByPrimaryKey(TbEnterprise record);
}