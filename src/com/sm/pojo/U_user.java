package com.sm.pojo;

import java.io.Serializable;


/*用户表*/

public class U_user implements Serializable {
    private int uid;
    private String uname;
    private String pwd;
    private String u_uname;
    private double balance; //余额
    private double ubalance;  //累计消费
    private String phone;



    public U_user() {
    }

    public U_user(int uid, String uname, String pwd, String u_uname, double balance, double ubalance, String phone) {
        this.uid = uid;
        this.uname = uname;
        this.pwd = pwd;
        this.u_uname = u_uname;
        this.balance = balance;
        this.ubalance = ubalance;
        this.phone = phone;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getU_uname() {
        return u_uname;
    }

    public void setU_uname(String u_uname) {
        this.u_uname = u_uname;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getUbalance() {
        return ubalance;
    }

    public void setUbalance(double ubalance) {
        this.ubalance = ubalance;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "U_user{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", pwd='" + pwd + '\'' +
                ", u_uname='" + u_uname + '\'' +
                ", balance=" + balance +
                ", ubalance=" + ubalance +
                ", phone='" + phone + '\'' +
                '}';
    }
}
