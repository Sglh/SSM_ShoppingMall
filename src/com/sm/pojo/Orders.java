package com.sm.pojo;

import java.io.Serializable;
import java.util.Date;

/*
* 订单表
* */

public class Orders implements Serializable {
//    oid INT(5) AUTO_INCREMENT PRIMARY KEY,
//    uid INT(5) NOT NULL,
//    coid INT(5) NOT NULL,
//    number INT NOT NULL,
//    state	 INT(1) NOT NULL,
//    odata DATE NOT NULL,
//    remarks  VARCHAR(100),
    private int oid;
    private int uid;
    private int coid;
    private int number;//商品数量
    private int state;//订单状态
    private Date odata;//消费日期
    private String remarks;//订单备注

    private Consumption consumption;  //持有消费明细表
    private Commodity commodity;//持有商品表

    private Picture picture;  //持有图片表

    private Address address;  //持有地址表


    public Orders() {
    }

    public Orders(int oid, int uid, int coid, int number, int state, Date odata, String remarks, Consumption consumption, Commodity commodity, Picture picture, Address address) {
        this.oid = oid;
        this.uid = uid;
        this.coid = coid;
        this.number = number;
        this.state = state;
        this.odata = odata;
        this.remarks = remarks;
        this.consumption = consumption;
        this.commodity = commodity;
        this.picture = picture;
        this.address = address;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getCoid() {
        return coid;
    }

    public void setCoid(int coid) {
        this.coid = coid;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Date getOdata() {
        return odata;
    }

    public void setOdata(Date odata) {
        this.odata = odata;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Consumption getConsumption() {
        return consumption;
    }

    public void setConsumption(Consumption consumption) {
        this.consumption = consumption;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "oid=" + oid +
                ", uid=" + uid +
                ", coid=" + coid +
                ", number=" + number +
                ", state=" + state +
                ", odata=" + odata +
                ", remarks='" + remarks + '\'' +
                ", consumption=" + consumption +
                ", commodity=" + commodity +
                ", picture=" + picture +
                ", address=" + address +
                '}';
    }
}
