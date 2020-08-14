package com.sm.pojo;

import java.io.Serializable;

public class Picture implements Serializable {
    private int pid;
    private int coid;
    private String realname;
    private String filename;
    private String filetype;

    public Picture() {
    }

    public Picture(int pid, int coid, String realname, String filename, String filetype) {
        this.pid = pid;
        this.coid = coid;
        this.realname = realname;
        this.filename = filename;
        this.filetype = filetype;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getCoid() {
        return coid;
    }

    public void setCoid(int coid) {
        this.coid = coid;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    @Override
    public String toString() {
        return "Picture{" +
                "pid=" + pid +
                ", coid=" + coid +
                ", realname='" + realname + '\'' +
                ", filename='" + filename + '\'' +
                ", filetype='" + filetype + '\'' +
                '}';
    }
}
