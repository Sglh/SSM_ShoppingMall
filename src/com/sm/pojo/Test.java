package com.sm.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {
    @org.junit.Test
    public void test() {
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date1 = sdf.format(date);
        System.out.println(date1);
    }
}
