package com.wuliu.pojo.po;

import java.util.Date;

public class TbAppointment {
    private Integer id;

    private String name;

    private String phone;

    private String address;

    private String tel;

    private String flag;

    private Date appoinTime;

    public Date getAppoinTime() {
        return appoinTime;
    }

    public void setAppoinTime(Date appoinTime) {
        this.appoinTime = appoinTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }
}