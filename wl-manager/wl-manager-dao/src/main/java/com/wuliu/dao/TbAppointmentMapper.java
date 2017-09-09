package com.wuliu.dao;

import com.wuliu.pojo.po.TbAppointment;
import com.wuliu.pojo.po.TbAppointmentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbAppointmentMapper {
    int countByExample(TbAppointmentExample example);

    int deleteByExample(TbAppointmentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbAppointment record);

    int insertSelective(TbAppointment record);

    List<TbAppointment> selectByExample(TbAppointmentExample example);

    TbAppointment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbAppointment record, @Param("example") TbAppointmentExample example);

    int updateByExample(@Param("record") TbAppointment record, @Param("example") TbAppointmentExample example);

    int updateByPrimaryKeySelective(TbAppointment record);

    int updateByPrimaryKey(TbAppointment record);
}