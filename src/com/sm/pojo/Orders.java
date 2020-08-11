package com.sm.pojo;

import java.io.Serializable;
import java.util.Date;

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
    private Consumption consumption;

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
                '}';
    }

    public Consumption getConsumption() {
        return consumption;
    }

    public void setConsumption(Consumption consumption) {
        this.consumption = consumption;
    }

    public Orders() {
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
}
