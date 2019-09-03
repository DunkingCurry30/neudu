package com.dr.his.dao.Imp.imp;


import com.dr.his.dao.IChargeItemsDao;
import com.dr.his.pojo.ChargeItems;
import com.dr.his.pojo.Drugs;
import com.dr.his.pojo.PaymentTypes;
import com.dr.his.utils.C3p0Util;
import com.dr.his.utils.ThisUUID;

import java.sql.SQLException;
import java.util.List;

import static java.lang.Math.abs;

public class IChargeItemsDaoImp implements IChargeItemsDao {

    @Override
    public List<ChargeItems> selectChargeItemsDao(String p_id) throws SQLException {
        String sql = "SELECT * FROM chargeitems where p_id=? and c_set_return_amount='未退';";
        List<ChargeItems> chargeItems = C3p0Util.queryList(sql, ChargeItems.class, p_id);
        return chargeItems;
    }

    @Override
    public void returnChargeItemsDao(String checkbox) throws SQLException {

        String[] checklists = checkbox.split(";");
        System.out.println("-----------退费信息------------");
        for (int i = 0; i < checklists.length; i++) {
            /**
             * 删除收费项目表中的数据
             */
//            String c_id = checklists[i];
//            String sql = "DELETE FROM chargeitems WHERE c_id=? ;";
//            C3p0Util.update(sql,c_id);
//            System.out.println("已退" + checklists[0]);
            /**
             * 更改收费项目表中的数据
             */
            String c_id = checklists[i];
            String sql = "UPDATE chargeitems SET c_set_return_amount='已退' WHERE c_id=? ;";
            int row = C3p0Util.update(sql,c_id);
            if(row!=0) System.out.println("已退" + checklists[i]);
            else System.out.println("未退"+ checklists[i]);
        }


    }

    /**
     * 查询药品以显示模态窗
     * @return
     */
    @Override
    public List<Drugs> selectDrugsDao() throws SQLException {
        String sql = "SELECT * FROM drugs;";
        List<Drugs> drugs = C3p0Util.queryList(sql, Drugs.class);
        return drugs;
    }

    /**
     * 添加收费信息表
     * @param checkbox
     */
    @Override
    public void addPaymentAccountDao(String checkbox) throws Exception {
        String[] checklists = checkbox.split(";");
        for (int i = 0; i < checklists.length; i++) {
            String[] itemlists = checklists[i].split(",");
            //收费项目编号
            String c_id = ThisUUID.getUUID();
            //名称
            String c_name = itemlists[0];
            //规格
            String c_format = itemlists[1];
            //优惠前价格
            float c_before_price = Float.parseFloat(itemlists[2]);
            //数量
            int c_amount = Integer.parseInt(itemlists[3]);
            //单位
            String c_unit = itemlists[4];
            //折扣
            float discount = Float.parseFloat(itemlists[6]);
            //患者名
            String u_name = itemlists[7];
            //单据号
            String p_id = itemlists[8];

            //优惠后价格
            float c_after_price = c_before_price * discount;
            //可退数量
            int c_return_amount = c_amount;
            //退费标记
            String c_set_return_amount = "未退";
            //退费金额
            float c_return_price = 0;
            //优惠后退费金额
            float c_after_return_price = 0;
            //发药标识
            String c_mark = "已发";
            System.out.println(c_id+c_name+c_format+c_before_price+c_amount+c_unit+c_after_price+c_after_return_price+c_return_price+c_return_amount+c_set_return_amount+c_mark+p_id+u_name);
            String sql = "INSERT INTO chargeitems(c_id,c_name,c_format,c_before_price,c_amount,c_unit,c_after_price," +
                    "c_after_return_price,c_return_price,c_return_amount,c_set_return_amount,c_mark,p_id,u_name) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
            C3p0Util.update(sql, c_id,c_name,c_format,c_before_price,c_amount,c_unit,c_after_price,c_after_return_price,c_return_price,c_return_amount,c_set_return_amount,c_mark,p_id,u_name);
        }

    }

    /**
     * 返回结算类型列表
     * @return
     */
    @Override
    public List<PaymentTypes> selectPaymentTypesDao() throws SQLException {
        String sql = "SELECT * FROM paymenttypes;";
        List<PaymentTypes> paymentTypes = C3p0Util.queryList(sql, PaymentTypes.class);
        return paymentTypes;
    }
    /**
     * 添加收费信息至payment表
     * @param checkbox
     * @throws SQLException
     */
    @Override
    public void addPaymentDao(String checkbox) throws SQLException {
        String[] checklists = checkbox.split(";");
        String[] itemlists = checklists[0].split(",");
        String u_name = itemlists[7];
        //单据号
        String p_id = itemlists[8];
        float c_before_price = 0;
        //数量
        int c_amount = 0;
        //挂号费
        float rs_money = Float.parseFloat(itemlists[9]);

        //优惠后的实付金额
        float p_money = Float.parseFloat(itemlists[10]);
        //账户支付
        float p_money2 = Float.parseFloat(itemlists[9]);



        //支付标记：通过discount判断
        float discount = Float.parseFloat(itemlists[6]);
        int p_mark = 0;
        //float型数据不能比较相等和不等，只能控制绝对值差的范围
        if (abs(discount-0.4)<0.000001) {
            p_mark = 0;
        } else if (abs(discount-0.3)<0.000001) {
            p_mark = 2;
        } else if (abs(discount-1)<0.000001) {
            p_mark = 1;
        } else {
            p_mark = 0;
        }
        //总金额=挂号费+药品费(价格X数量)
        float p_total_money =0;
        for (int i = 0; i <checklists.length ; i++) {
            String[] drugs = checklists[i].split(",");
            //价格
            c_before_price = Float.parseFloat(drugs[2]);
            //数量
            c_amount = Integer.parseInt(drugs[3]);
            p_total_money += c_amount*c_before_price;

        }
        p_total_money += rs_money;
        //报销金额
        float p_return_money = 0;
        p_return_money = p_total_money - p_money;
        //订单号
        String p_o_id = "001";
        //现金支付
        float p_money1 = 0;

        String sql = "INSERT INTO payment(p_id,p_total_money,p_money,p_money1,p_money2,p_return_money,p_mark,p_o_id,u_name)" +
                " VALUES(?,?,?,?,?,?,?,?,?);";
//            System.out.println(p_id+p_total_money+p_money+p_money1+p_money2+p_return_money+p_mark+p_o_id+u_name);
        C3p0Util.update(sql,p_id,p_total_money,p_money,p_money1,p_money2,p_return_money,p_mark,p_o_id,u_name);
    }
}

