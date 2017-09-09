package com.wuliu.common.dto;

/**
 * Created by Administrator on 2017/9/6 0006.
 */
public class Page {
    private int page;
    private int rows;
    //private int begin;limit起始的索引,算出来的

    public int getBegin() {
        return (page-1)*rows;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }
}
