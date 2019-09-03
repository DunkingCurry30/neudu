package com.dr.his.pojo;

public class Users {
    //编号
    private  String u_id;
    //姓名
    private  String u_name;
    //性别
    private  String u_sex;
    //年龄
    private  String u_age;
    //医疗编号
    private  String u_medicine_number;
    //日期
    private  String u_date;
    //身份证号
    private  String u_id_number;
    //地址
    private  String u_adder;
    //用户编号
    private  String a_u_id;
    //职位编号
    private  String j_u_id;

    @Override
    public String toString() {
        return "Users{" +
                "u_id='" + u_id + '\'' +
                ", u_name='" + u_name + '\'' +
                ", u_sex='" + u_sex + '\'' +
                ", u_age='" + u_age + '\'' +
                ", u_medicine_number='" + u_medicine_number + '\'' +
                ", u_date='" + u_date + '\'' +
                ", u_id_number='" + u_id_number + '\'' +
                ", u_adder='" + u_adder + '\'' +
                ", a_u_id='" + a_u_id + '\'' +
                ", j_u_id='" + j_u_id + '\'' +
                ", d_u_id='" + d_u_id + '\'' +
                '}';
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_sex() {
        return u_sex;
    }

    public void setU_sex(String u_sex) {
        this.u_sex = u_sex;
    }

    public String getU_age() {
        return u_age;
    }

    public void setU_age(String u_age) {
        this.u_age = u_age;
    }

    public String getU_medicine_number() {
        return u_medicine_number;
    }

    public void setU_medicine_number(String u_medicine_number) {
        this.u_medicine_number = u_medicine_number;
    }

    public String getU_date() {
        return u_date;
    }

    public void setU_date(String u_date) {
        this.u_date = u_date;
    }

    public String getU_id_number() {
        return u_id_number;
    }

    public void setU_id_number(String u_id_number) {
        this.u_id_number = u_id_number;
    }

    public String getU_adder() {
        return u_adder;
    }

    public void setU_adder(String u_adder) {
        this.u_adder = u_adder;
    }

    public String getA_u_id() {
        return a_u_id;
    }

    public void setA_u_id(String a_u_id) {
        this.a_u_id = a_u_id;
    }

    public String getJ_u_id() {
        return j_u_id;
    }

    public void setJ_u_id(String j_u_id) {
        this.j_u_id = j_u_id;
    }

    public String getD_u_id() {
        return d_u_id;
    }

    public void setD_u_id(String d_u_id) {
        this.d_u_id = d_u_id;
    }

    //部门编号
    private  String d_u_id;


}
