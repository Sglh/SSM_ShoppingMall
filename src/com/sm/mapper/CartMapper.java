package com.sm.mapper;

import com.sm.pojo.Address;
import com.sm.pojo.Orders;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartMapper {

    public List<Orders> CartAll(int uid);
    //查询当前所以地址
    @Select("select * from address where uid=#{param1}")
    public List<Address> selAddress(int uid);
    //查询当前用户所以的购买数量
    @Select("SELECT SUM(number) FROM orders WHERE uid=#{param1} AND state=1")
    public String Allnub(int uid);
    //查询购物车的总额
    @Select("SELECT SUM(o.`number`*c.`price`) FROM orders o JOIN commodity c ON c.`coid`=o.`coid`  WHERE o.uid=#{param1} AND o.state=1;")
    public String numPrice(int uid);
    //添加用户明细表
    @Insert("INSERT INTO consumption VALUES(NULL,#{param2},0,(SELECT SUM(o.`number`*c.`price`) FROM orders o JOIN commodity c ON c.`coid`=o.`coid`  WHERE o.uid=#{param1} AND o.state=1 AND o.`oid`=#{param2}))")
    public int mingXi(int uid,int oid);
    //查询当前用户所选择的地址
    @Select("SELECT * FROM address WHERE addresss=#{param1}")
    public Address tetAid(String addresss);
    //修改用户的余额以及累计消费
    @Update("update u_user set balance =#{param1},ubalance=#{param2} where uid = #{param3}")
    public int XiaoFei(double num,double num1,int uid);
    //修改订单状态
    @Update("UPDATE orders SET state = 0,remarks=#{param3},aid=#{param2} WHERE uid =#{param1} AND state=1")
    public int Dingdan(int uid,int aid,String remarks);

}
