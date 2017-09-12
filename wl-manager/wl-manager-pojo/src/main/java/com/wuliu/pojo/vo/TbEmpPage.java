package com.wuliu.pojo.vo;

import com.wuliu.pojo.po.TbEmp;

/**
 * Created by Administrator on 2017/9/6 0006.
 */
public class TbEmpPage extends TbEmp {
    //添加这两个属性是为了封装前端需要的参数,传给前端
    private String userName;
    private String jobName;
    private String cityName;
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
}
