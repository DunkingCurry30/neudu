package com.dr.his.pojo;

/**
 * 结算类型
 */
public class PaymentTypes {

    /**
     *类型编号
     */
    private  String pt_id;


    /**
     *类型名称
     */
    private  String pt_name;


    /**
     *类型标识
     */
    private  String pt_mark;

    @Override
    public String toString() {
        return "SettlementTypes{" +
                "pt_id='" + pt_id + '\'' +
                ", pt_name='" + pt_name + '\'' +
                ", pt_mark='" + pt_mark + '\'' +
                '}';
    }

    public String getPt_id() {
        return pt_id;
    }

    public void setPt_id(String pt_id) {
        this.pt_id = pt_id;
    }

    public String getPt_name() {
        return pt_name;
    }

    public void setPt_name(String pt_name) {
        this.pt_name = pt_name;
    }

    public String getPt_mark() {
        return pt_mark;
    }

    public void setPt_mark(String pt_mark) {
        this.pt_mark = pt_mark;
    }
}
