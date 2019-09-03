package com.dr.his.pojo;

/**
 * 支付明细
 */
public class Payment {
    /**
     * 单据编号
     */
    private String p_id;
    /**
     * 实付金额
     */
    private float p_money;
    /**
     * 现金支付
     */
    private float P_money1;
    /**
     * 账户支付
     */
    private float p_money2;
    /**
     * 报销支付
     */
    private float P_return_money;
    /**
     * 结算类型
     */
    private String pt_name;
    /**
     * 收费项目编号
     */
    private String p_o_id;
    /**
     * 患者名称
     */
    private String u_name;

    /**
     * 总金额
     */
    private float p_total_money;

    @Override
    public String toString() {
        return "Payment{" +
                "p_id='" + p_id + '\'' +
                ", p_money=" + p_money +
                ", P_money1=" + P_money1 +
                ", p_money2=" + p_money2 +
                ", P_return_money=" + P_return_money +
                ", pt_name='" + pt_name + '\'' +
                ", p_o_id='" + p_o_id + '\'' +
                ", u_name='" + u_name + '\'' +
                ", p_total_money=" + p_total_money +
                '}';
    }

    public float getP_total_money() {
        return p_total_money;
    }

    public void setP_total_money(float p_total_money) {
        this.p_total_money = p_total_money;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public void setP_money(float p_money) {
        this.p_money = p_money;
    }

    public void setP_money1(float p_money1) {
        P_money1 = p_money1;
    }

    public void setP_money2(float p_money2) {
        this.p_money2 = p_money2;
    }

    public void setP_return_money(float p_return_money) {
        P_return_money = p_return_money;
    }

    public void setPt_name(String pt_name) {
        this.pt_name = pt_name;
    }

    public void setP_o_id(String p_o_id) {
        this.p_o_id = p_o_id;
    }

    public String getP_id() {
        return p_id;
    }

    public float getP_money() {
        return p_money;
    }

    public float getP_money1() {
        return P_money1;
    }

    public float getP_money2() {
        return p_money2;
    }

    public float getP_return_money() {
        return P_return_money;
    }

    public String getPt_name() {
        return pt_name;
    }

    public String getP_o_id() {
        return p_o_id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }
}
