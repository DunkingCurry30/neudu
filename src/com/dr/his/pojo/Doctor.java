package com.dr.his.pojo;

public class Doctor {
    //编号
    private  String do_id;
    //姓名
    private  String do_name;

    @Override
    public String toString() {
        return "Doctor{" +
                "do_id='" + do_id + '\'' +
                ", do_name='" + do_name + '\'' +
                ", d_id='" + d_id + '\'' +
                ", do_d_id='" + do_d_id + '\'' +
                '}';
    }

    public String getD_id() {
        return d_id;
    }

    public void setD_id(String d_id) {
        this.d_id = d_id;
    }

    //编
    private  String d_id;
    //部门

    public String getDo_id() {
        return do_id;
    }

    public void setDo_id(String do_id) {
        this.do_id = do_id;
    }

    public String getDo_name() {
        return do_name;
    }

    public void setDo_name(String do_name) {
        this.do_name = do_name;
    }

    public String getDo_d_id() {
        return do_d_id;
    }

    public void setDo_d_id(String do_d_id) {
        this.do_d_id = do_d_id;
    }

    private  String do_d_id;
}
