package com.dr.his.dao;

import com.dr.his.pojo.Number_Message;

import java.util.List;

public interface IRegisterMessageDao {

    /**
     * 查询单个对象的挂号信息
     * @param ns_id  使用挂号的编号
     * @return
     * @throws Exception
     */
    com.dr.his.pojo.Number_Message selectRegisterMessageOneDao(String ns_id)throws  Exception;

}
