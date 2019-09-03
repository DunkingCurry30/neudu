package com.dr.his.pojo;
/**
 * 职位
 */
public class Joob {
    @Override
    public String toString() {
        return "Joob{" +
                "j_id='" + j_id + '\'' +
                ", j_name='" + j_name + '\'' +
                ", j_mkar='" + j_mkar + '\'' +
                ", d_j_id='" + d_j_id + '\'' +
                '}';
    }

    /**
     *职位编号
     */
    private  String j_id;
    /**
     *职位名称
     */
    private  String j_name;
    /**
     *职位标识
     */
    private  String j_mkar;

    /**
     *科室编号
     */
    private  String d_j_id;

    public String getJ_id() {
        return j_id;
    }

    public void setJ_id(String j_id) {
        this.j_id = j_id;
    }

    public String getJ_name() {
        return j_name;
    }

    public void setJ_name(String j_name) {
        this.j_name = j_name;
    }

    public String getJ_mkar() {
        return j_mkar;
    }

    public void setJ_mkar(String j_mkar) {
        this.j_mkar = j_mkar;
    }

    public String getD_j_id() {
        return d_j_id;
    }

    public void setD_j_id(String d_j_id) {
        this.d_j_id = d_j_id;
    }
}
