package com.sm.pojo;

import java.io.Serializable;
import java.util.List;

public class Feedback implements Serializable {
//    fid INT(5) AUTO_INCREMENT PRIMARY KEY,
//    uid INT(5) NOT NULL,
//    aid INT(5) NOT NULL,
//    fremarks VARCHAR(50) ,
    private int fid;
    private int uid;
    private int aid;
    private String fremarks;
    private List<Address> address;

    public Feedback() {
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "fid=" + fid +
                ", uid=" + uid +
                ", aid=" + aid +
                ", fremarks='" + fremarks + '\'' +
                ", address=" + address +
                '}';
    }

    public List<Address> getAddress() {
        return address;
    }

    public void setAddress(List<Address> address) {
        this.address = address;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getFremarks() {
        return fremarks;
    }

    public void setFremarks(String fremarks) {
        this.fremarks = fremarks;
    }
}
