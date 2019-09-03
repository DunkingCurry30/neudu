package com.dr.his.pojo;

public class ChargeItems {

    /**
     * 收费项目编号
     */
    private String c_id;
    /**
     * 收费项目名称
     */
    private String c_name;
    /**
     * 规格
     */
    private String c_format;
    /**
     * 优惠前价格
     */
    private float  c_before_price;
    /**
     * 优惠后价格
     */
    private String c_after_price;
    /**
     * 开立数量
     */
    private String c_amount;
    /**
     * 单位
     */
    private String c_unit;
    /**
     * 可退数量
     */
    private String c_return_amount;
    /**
     * 退费数量
     */
    private String c_set_return_amount;
    /**
     * 退费金额
     */
    private String c_return_price;
    /**
     * 优惠后退费金额
     */
    private String c_after_return_price;
    /**
     * 发药标识
     */
    private String c_mark;
    /**
     * 患者名称
     */
    private String u_name;
    /**
     * 单据编号
     */
    private String p_id;

    @Override
    public String toString() {
        return "ChargeItems{" +
                "c_id='" + c_id + '\'' +
                ", c_name='" + c_name + '\'' +
                ", c_format='" + c_format + '\'' +
                ", c_before_price=" + c_before_price +
                ", c_after_price='" + c_after_price + '\'' +
                ", c_amount='" + c_amount + '\'' +
                ", c_unit='" + c_unit + '\'' +
                ", c_return_amount='" + c_return_amount + '\'' +
                ", c_set_return_amount='" + c_set_return_amount + '\'' +
                ", c_return_price='" + c_return_price + '\'' +
                ", c_after_return_price='" + c_after_return_price + '\'' +
                ", c_mark='" + c_mark + '\'' +
                ", u_name='" + u_name + '\'' +
                ", p_id='" + p_id + '\'' +
                '}';
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public void setC_format(String c_format) {
        this.c_format = c_format;
    }

    public void setC_before_price(float c_before_price) {
        this.c_before_price = c_before_price;
    }

    public void setC_after_price(String c_after_price) {
        this.c_after_price = c_after_price;
    }

    public void setC_amount(String c_amount) {
        this.c_amount = c_amount;
    }

    public void setC_unit(String c_unit) {
        this.c_unit = c_unit;
    }

    public void setC_return_amount(String c_return_amount) {
        this.c_return_amount = c_return_amount;
    }

    public void setC_set_return_amount(String c_set_return_amount) {
        this.c_set_return_amount = c_set_return_amount;
    }

    public void setC_return_price(String c_return_price) {
        this.c_return_price = c_return_price;
    }

    public void setC_after_return_price(String c_after_return_price) {
        this.c_after_return_price = c_after_return_price;
    }

    public void setC_mark(String c_mark) {
        this.c_mark = c_mark;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public String getC_id() {
        return c_id;
    }

    public String getC_name() {
        return c_name;
    }

    public String getC_format() {
        return c_format;
    }

    public float getC_before_price() {
        return c_before_price;
    }

    public String getC_after_price() {
        return c_after_price;
    }

    public String getC_amount() {
        return c_amount;
    }

    public String getC_unit() {
        return c_unit;
    }

    public String getC_return_amount() {
        return c_return_amount;
    }

    public String getC_set_return_amount() {
        return c_set_return_amount;
    }

    public String getC_return_price() {
        return c_return_price;
    }

    public String getC_after_return_price() {
        return c_after_return_price;
    }

    public String getC_mark() {
        return c_mark;
    }

    public String getU_name() {
        return u_name;
    }

    public String getP_id() {
        return p_id;
    }
}
