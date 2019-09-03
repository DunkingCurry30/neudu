package com.dr.his.pojo;

public class Medicaltypes {
    //编号
    private  String mt_id;
    //医疗类型名称

    public String getMt_id() {
        return mt_id;
    }

    public void setMt_id(String mt_id) {
        this.mt_id = mt_id;
    }

    public String getMt_mkar() {
        return mt_mkar;
    }

    public void setMt_mkar(String mt_mkar) {
        this.mt_mkar = mt_mkar;
    }

    public String getMt_name() {
        return mt_name;
    }

    public void setMt_name(String mt_name) {
        this.mt_name = mt_name;
    }

    @Override
    public String toString() {
        return "Medicaltypes{" +
                "mt_id='" + mt_id + '\'' +
                ", mt_name='" + mt_name + '\'' +
                ", mt_mkar='" + mt_mkar + '\'' +
                '}';
    }

    private  String mt_name;
    //标识
    private  String mt_mkar;
}
