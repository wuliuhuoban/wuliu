package com.wuliu.pojo.vo;

import com.wuliu.pojo.po.TbEmp;

/**
 * Created by Administrator on 2017/9/7.
 */
public class TbEmpCustom extends TbEmp{
    private String jobName;
    private String userName;
    private String pass;
    private String cityName;

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
}
