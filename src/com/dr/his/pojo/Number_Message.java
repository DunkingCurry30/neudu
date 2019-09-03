package com.dr.his.pojo;

import java.util.Date;

/**
 * 挂号信息表
 */
public class Number_Message {
    //编号
    private  String n_u_id;
    //姓名
    private  String n_u_name;
    //性别
    private  String n_u_sex;
    //年龄
    private  String n_u_age;
    //医疗编号
    private  String n_u_medicine_number;
    //出生日期
    private  String n_u_date;
    //身份证号
    private  String n_u_id_number;
    //地址
    private  String n_u_adder;
    //结算类型
    private  String  jiesuantype;
    //医疗类型
    private  String yiliaotype;
// 号别类型
    private  String haobietype;
    //挂号科室
    private  String keshitype;
    //看诊医生
    private String yishengtype;
    //挂号来源
    private  String laiyuantype;
    //看诊日期
    private  String kanzhendate;
    //金额
    private  String money;
    //挂号日期
    private Date ns_numbet_date;
    //发票号
    private  String  mssage_id;

    public String getMssage_id() {
        return mssage_id;
    }

    public void setMssage_id(String mssage_id) {
        this.mssage_id = mssage_id;
    }


    public String getN_u_id() {
        return n_u_id;
    }

    public void setN_u_id(String n_u_id) {
        this.n_u_id = n_u_id;
    }

    public String getN_u_name() {
        return n_u_name;
    }

    public void setN_u_name(String n_u_name) {
        this.n_u_name = n_u_name;
    }

    public String getN_u_sex() {
        return n_u_sex;
    }

    public void setN_u_sex(String n_u_sex) {
        this.n_u_sex = n_u_sex;
    }

    public String getN_u_age() {
        return n_u_age;
    }

    public void setN_u_age(String n_u_age) {
        this.n_u_age = n_u_age;
    }

    public String getN_u_medicine_number() {
        return n_u_medicine_number;
    }

    public void setN_u_medicine_number(String n_u_medicine_number) {
        this.n_u_medicine_number = n_u_medicine_number;
    }

    public String getN_u_date() {
        return n_u_date;
    }

    public void setN_u_date(String n_u_date) {
        this.n_u_date = n_u_date;
    }

    public String getN_u_id_number() {
        return n_u_id_number;
    }

    public void setN_u_id_number(String n_u_id_number) {
        this.n_u_id_number = n_u_id_number;
    }

    public String getN_u_adder() {
        return n_u_adder;
    }

    public void setN_u_adder(String n_u_adder) {
        this.n_u_adder = n_u_adder;
    }

    public String getJiesuantype() {
        return jiesuantype;
    }

    public void setJiesuantype(String jiesuantype) {
        this.jiesuantype = jiesuantype;
    }

    public String getYiliaotype() {
        return yiliaotype;
    }

    public void setYiliaotype(String yiliaotype) {
        this.yiliaotype = yiliaotype;
    }

    public String getHaobietype() {
        return haobietype;
    }

    public void setHaobietype(String haobietype) {
        this.haobietype = haobietype;
    }

    public String getKeshitype() {
        return keshitype;
    }

    public void setKeshitype(String keshitype) {
        this.keshitype = keshitype;
    }

    public String getYishengtype() {
        return yishengtype;
    }

    public void setYishengtype(String yishengtype) {
        this.yishengtype = yishengtype;
    }

    public String getLaiyuantype() {
        return laiyuantype;
    }

    public void setLaiyuantype(String laiyuantype) {
        this.laiyuantype = laiyuantype;
    }

    public String getKanzhendate() {
        return kanzhendate;
    }

    public void setKanzhendate(String kanzhendate) {
        this.kanzhendate = kanzhendate;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }


    public Date getNs_numbet_date() {
        return ns_numbet_date;
    }

    public void setNs_numbet_date(Date ns_numbet_date) {
        this.ns_numbet_date = ns_numbet_date;
    }

    @Override
    public String toString() {
        return "Number_Message{" +
                "n_u_id='" + n_u_id + '\'' +
                ", n_u_name='" + n_u_name + '\'' +
                ", n_u_sex='" + n_u_sex + '\'' +
                ", n_u_age='" + n_u_age + '\'' +
                ", n_u_medicine_number='" + n_u_medicine_number + '\'' +
                ", n_u_date='" + n_u_date + '\'' +
                ", n_u_id_number='" + n_u_id_number + '\'' +
                ", n_u_adder='" + n_u_adder + '\'' +
                ", jiesuantype='" + jiesuantype + '\'' +
                ", yiliaotype='" + yiliaotype + '\'' +
                ", haobietype='" + haobietype + '\'' +
                ", mssage_id='" + mssage_id + '\'' +
                ", keshitype='" + keshitype + '\'' +
                ", yishengtype='" + yishengtype + '\'' +
                ", laiyuantype='" + laiyuantype + '\'' +
                ", kanzhendate='" + kanzhendate + '\'' +
                ", money='" + money + '\'' +
                ", ns_numbet_date=" + ns_numbet_date +
                '}';
    }




}
