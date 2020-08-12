package com.sm.pojo;

import java.sql.Date;

/*
* 签到表
* */

public class Signin {
    // sid INT(5) AUTO_INCREMENT PRIMARY KEY,
    //       uid INT(5) NOT NULL,
    //       sdata DATE NOT NULL,
    private int sid;
    private int uid;
    private Date sdata;

    public Signin() {
    }

    @Override
    public String toString() {
        return "Signin{" +
                "sid=" + sid +
                ", uid=" + uid +
                ", sdata=" + sdata +
                '}';
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Date getSdata() {
        return sdata;
    }

    public void setSdata(Date sdata) {
        this.sdata = sdata;
    }
}
