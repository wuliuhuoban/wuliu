package com.wuliu.pojo.po;

public class TbPrice {
    private Integer id;

    private Integer fweight;

    private Integer fprice;

    private Integer tprice;

    private String flag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFweight() {
        return fweight;
    }

    public void setFweight(Integer fweight) {
        this.fweight = fweight;
    }

    public Integer getFprice() {
        return fprice;
    }

    public void setFprice(Integer fprice) {
        this.fprice = fprice;
    }

    public Integer getTprice() {
        return tprice;
    }

    public void setTprice(Integer tprice) {
        this.tprice = tprice;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }
}