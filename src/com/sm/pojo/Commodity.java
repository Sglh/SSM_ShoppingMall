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
    private Date newdata;  //消费时间
    private int coumber;  //数量

    private Category category;  //持有商品类别表
    private Picture picture;  //持有图片表

    public Commodity() {
    }

    public Commodity(int coid, int cid, String coname, double price, Date newdata, int coumber) {
        this.coid = coid;
        this.cid = cid;
        this.coname = coname;
        this.price = price;
        this.newdata = newdata;
        this.coumber = coumber;
    }

    public Commodity(int coid, int cid, String coname, double price, Date newdata, int coumber, Category category, Picture picture) {
        this.coid = coid;
        this.cid = cid;
        this.coname = coname;
        this.price = price;
        this.newdata = newdata;
        this.coumber = coumber;
        this.category = category;
        this.picture = picture;
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
        return newdata;
    }

    public void setNewdate(Date newdate) {
        this.newdata = newdate;
    }

    public int getCoumber() {
        return coumber;
    }

    public void setCoumber(int coumber) {
        this.coumber = coumber;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "coid=" + coid +
                ", cid=" + cid +
                ", coname='" + coname + '\'' +
                ", price=" + price +
                ", newdate=" + newdata +
                ", coumber=" + coumber +
                ", category=" + category +
                ", picture=" + picture +
                '}';
    }
}
