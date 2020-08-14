package com.sm.pojo;

import java.io.Serializable;
import java.util.Date;

/*
* 商品表
* */
public class Commodity implements Serializable {
    private int coid;
    private int cid;
    private String coname;
    private double price;
    private Date newdate;  //消费时间
    private int coumber;  //数量

    public Commodity() {
    }

    public Commodity(int coid, int cid, String coname, double price, Date newdate, int coumber) {
        this.coid = coid;
        this.cid = cid;
        this.coname = coname;
        this.price = price;
        this.newdate = newdate;
        this.coumber = coumber;
    }

    public int getCoid() {
        return coid;
    }

    public void setCoid(int coid) {
        this.coid = coid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getConame() {
        return coname;
    }

    public void setConame(String coname) {
        this.coname = coname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getNewdate() {
        return newdate;
    }

    public void setNewdate(Date newdate) {
        this.newdate = newdate;
    }

    public int getCoumber() {
        return coumber;
    }

    public void setCoumber(int coumber) {
        this.coumber = coumber;
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "coid=" + coid +
                ", cid=" + cid +
                ", coname='" + coname + '\'' +
                ", price=" + price +
                ", newdate=" + newdate +
                ", coumber=" + coumber +
                '}';
    }
}
