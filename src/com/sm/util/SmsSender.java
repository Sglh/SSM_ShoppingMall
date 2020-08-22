package com.sm.util;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import java.io.IOException;
import java.util.Random;

/**
 * 这是发送短信的工具类
 */
public class SmsSender {

    //发送短信
    public String sendCode(String phone){
        //要被短信平台发送的数据,这个数据不但要发给手机,还有告诉后台服务器
        String num = getNum();
        //短信发送逻辑
        HttpClient client = new HttpClient();
         PostMethod post = new PostMethod("http://gbk.api.smschinese.cn");
        post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
        NameValuePair[] data ={ new NameValuePair("Uid", "zhangjunwen"),new NameValuePair("Key", "d41d8cd98f00b204e980"),new NameValuePair("smsMob",phone),new NameValuePair("smsText","本次登录的验证码："+num)};
        post.setRequestBody(data);

        try {
            client.executeMethod(post);
            Header[] headers = post.getResponseHeaders();
            int statusCode = post.getStatusCode();
            System.out.println("statusCode:"+statusCode);
            for(Header h : headers)
            {
                System.out.println(h.toString());
            }
            String result = new String(post.getResponseBodyAsString().getBytes("gbk"));
            System.out.println(result); //打印返回消息状态


            post.releaseConnection();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return num;
    }

    //获取六位随机数
    public String getNum(){
        String num ="";
        while(num.length()<6){
            Random r = new Random();
            int n = r.nextInt(10);//得到0~9之间的随机数
            num+=n;
        }
        return num;
    }
}
