package com.dr.his.pojo;

/**
 * 药品表
 */
public class Drugs {
    /**
     *药品编号
     */
    private  String dr_id;
    /**
     *药品名称
     */
    private  String dr_name;
    /**
     *药品单价
     */
    private  Float dr_money;

    /**
     *药品单位
     */
    private  String dr_unit;

    /**
     *药品标识
     */
    private  String dr_mark;
    /**
     * 药品规格
     */
    private  String dr_format;

    @Override
    public String toString() {
        return "Drugs{" +
                "dr_id='" + dr_id + '\'' +
                ", dr_name='" + dr_name + '\'' +
                ", dr_money=" + dr_money +
                ", dr_unit='" + dr_unit + '\'' +
                ", dr_mark='" + dr_mark + '\'' +
                ", dr_format='" + dr_format + '\'' +
                '}';
    }

    public void setDr_id(String dr_id) {
        this.dr_id = dr_id;
    }

    public void setDr_name(String dr_name) {
        this.dr_name = dr_name;
    }

    public void setDr_money(Float dr_money) {
        this.dr_money = dr_money;
    }

    public void setDr_unit(String dr_unit) {
        this.dr_unit = dr_unit;
    }

    public void setDr_mark(String dr_mark) {
        this.dr_mark = dr_mark;
    }

    public void setDr_format(String dr_format) {
        this.dr_format = dr_format;
    }

    public String getDr_id() {
        return dr_id;
    }

    public String getDr_name() {
        return dr_name;
    }

    public Float getDr_money() {
        return dr_money;
    }

    public String getDr_unit() {
        return dr_unit;
    }

    public String getDr_mark() {
        return dr_mark;
    }

    public String getDr_format() {
        return dr_format;
    }
}
