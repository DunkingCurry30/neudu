package com.dr.his.pojo;

public class Dept {
    //编号
    private String d_id;

    @Override
    public String toString() {
        return "Dept{" +
                "d_id='" + d_id + '\'' +
                ", d_name='" + d_name + '\'' +
                ", d_mkar='" + d_mkar + '\'' +
                '}';
    }

    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }

    //编号
    private String d_name;

    public String getD_id() {
        return d_id;
    }

    public void setD_id(String d_id) {
        this.d_id = d_id;
    }


    public String getD_mkar() {
        return d_mkar;
    }

    public void setD_mkar(String d_mkar) {
        this.d_mkar = d_mkar;
    }

    //编号
    private String d_mkar;
}
