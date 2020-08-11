package com.sm.pojo;

import java.io.Serializable;
import java.util.List;

public class Consumption implements Serializable {

    //conid INT(5) AUTO_INCREMENT PRIMARY KEY,
    //       oid INT(5) NOT NULL,
    //       recharge DOUBLE NOT NULL,
    //       consum DOUBLE NOT NULL,

    private int conid;
    private int oid;
    private double recharge;//充值数额
    private double consum;//消费数额

    public Consumption() {
    }

    @Override
    public String toString() {
        return "Consumption{" +
                "conid=" + conid +
                ", oid=" + oid +
                ", recharge=" + recharge +
                ", consum=" + consum +
                '}';
    }

    public int getConid() {
        return conid;
    }

    public void setConid(int conid) {
        this.conid = conid;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public double getRecharge() {
        return recharge;
    }

    public void setRecharge(double recharge) {
        this.recharge = recharge;
    }

    public double getConsum() {
        return consum;
    }

    public void setConsum(double consum) {
        this.consum = consum;
    }
}
