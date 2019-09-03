package com.dr.his.pojo;

import java.util.Date;

/**
 * 账号
 */
public class Acconut {
    /**
     *编号
     */
    private  String a_id;
    /**
     *账号
     */
    private  String a_account;
    /**
     *密码
     */
    private  String a_pwd;
    /**
     *邮件
     */
    private  String a_email;
    /**
     *标识
     */
    private  String a_mark;
    /**
     *职位名称
     */
    private  String j_name;

    /**
     *姓名
     */
    private  String u_name;
    /**
     *性别
     */
    private  String u_sex;
    /**
     *年龄
     */
    private  String u_age;

    /**
     *出生日期
     */
    private String u_date;

    /**
     *医疗证号
     */
    private  String u_medicine_number;

    /**
     *身份证号
     */
    private  String u_id_number;
    /**
     *家庭住址
     */
    private  String u_adder;


    public String getJ_name() {
        return j_name;
    }

    public void setJ_name(String j_name) {
        this.j_name = j_name;
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

    public String getU_date() {
        return u_date;
    }

    public void setU_date(String u_date) {
        this.u_date = u_date;
    }

    public String getU_medicine_number() {
        return u_medicine_number;
    }

    public void setU_medicine_number(String u_medicine_number) {
        this.u_medicine_number = u_medicine_number;
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

    @Override
    public String toString() {
        return "Acconut{" +
                "a_id='" + a_id + '\'' +
                ", a_account='" + a_account + '\'' +
                ", a_pwd='" + a_pwd + '\'' +
                ", a_email='" + a_email + '\'' +
                ", a_mark='" + a_mark + '\'' +
                ", j_name='" + j_name + '\'' +
                ", u_name='" + u_name + '\'' +
                ", u_sex='" + u_sex + '\'' +
                ", u_age='" + u_age + '\'' +
                ", u_date=" + u_date +
                ", u_medicine_number='" + u_medicine_number + '\'' +
                ", u_id_number='" + u_id_number + '\'' +
                ", u_adder='" + u_adder + '\'' +
                '}';
    }

    public String getA_id() {
        return a_id;
    }

    public void setA_id(String a_id) {
        this.a_id = a_id;
    }

    public String getA_account() {
        return a_account;
    }

    public void setA_account(String a_account) {
        this.a_account = a_account;
    }

    public String getA_pwd() {
        return a_pwd;
    }

    public void setA_pwd(String a_pwd) {
        this.a_pwd = a_pwd;
    }

    public String getA_email() {
        return a_email;
    }

    public void setA_email(String a_email) {
        this.a_email = a_email;
    }

    public String getA_mark() {
        return a_mark;
    }

    public void setA_mark(String a_mark) {
        this.a_mark = a_mark;
    }

    public void seta_pwd(String a_pwd) {
        this.a_pwd = a_pwd;
    }

    }

