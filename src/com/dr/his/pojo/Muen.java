package com.dr.his.pojo;

/**
 * 菜单的实体类
 */
public class Muen {

 /**
  *菜单编号
  */
 private  Integer m_id;

 /**
  *菜单名称
  */
 private  String m_name;
    /**
     *菜单样式
     */
    private  String m_style;
    /**
     *菜单地址
     */
    private  String m_url;
    /**
     *菜单标识
     */
    private  String m_mark;
 
    /**
     *父级菜单id
     */
    private  Integer m_pr_id;

    @Override
    public String toString() {
        return "Muen{" +
                "m_id=" + m_id +
                ", m_name='" + m_name + '\'' +
                ", m_style='" + m_style + '\'' +
                ", m_url='" + m_url + '\'' +
                ", m_mark='" + m_mark + '\'' +
                ", m_pr_id=" + m_pr_id +
                '}';
    }

    public Integer getM_id() {
        return m_id;
    }

    public void setM_id(Integer m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getM_style() {
        return m_style;
    }

    public void setM_style(String m_style) {
        this.m_style = m_style;
    }

    public String getM_url() {
        return m_url;
    }

    public void setM_url(String m_url) {
        this.m_url = m_url;
    }

    public String getM_mark() {
        return m_mark;
    }

    public void setM_mark(String m_mark) {
        this.m_mark = m_mark;
    }

    public Integer getM_pr_id() {
        return m_pr_id;
    }

    public void setM_pr_id(Integer m_pr_id) {
        this.m_pr_id = m_pr_id;
    }
}
