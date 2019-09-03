package com.dr.his.pojo;

public class Numbertypes {
    //编号
    private String nt_id;

    @Override
    public String toString() {
        return "Numbertypes{" +
                "nt_id='" + nt_id + '\'' +
                ", nt_name='" + nt_name + '\'' +
                ", nt_mkar='" + nt_mkar + '\'' +
                '}';
    }

    public String getNt_name() {
        return nt_name;
    }

    public void setNt_name(String nt_name) {
        this.nt_name = nt_name;
    }

    //号别名称
    private String nt_name;
    //标识
    private String nt_mkar;

    public String getNt_id() {
        return nt_id;
    }

    public void setNt_id(String nt_id) {
        this.nt_id = nt_id;
    }


    public String getNt_mkar() {
        return nt_mkar;
    }

    public void setNt_mkar(String nt_mkar) {
        this.nt_mkar = nt_mkar;
    }
}
