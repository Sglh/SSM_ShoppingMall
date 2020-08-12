package com.sm.pojo;

import java.io.Serializable;

/*
* 地址表
* */

public class Address implements Serializable {
    private int aid;
    private int uid;
    private String addresss;

    public Address() {
    }

    public Address(int aid, int uid, String addresss) {
        this.aid = aid;
        this.uid = uid;
        this.addresss = addresss;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getAddresss() {
        return addresss;
    }

    public void setAddresss(String addresss) {
        this.addresss = addresss;
    }

    @Override
    public String toString() {
        return "Address{" +
                "aid=" + aid +
                ", uid=" + uid +
                ", addresss='" + addresss + '\'' +
                '}';
    }
}
