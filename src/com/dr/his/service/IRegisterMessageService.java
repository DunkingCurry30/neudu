package com.dr.his.service;

import com.dr.his.pojo.Number_Message;

import java.util.List;

public interface IRegisterMessageService {

    /**
     * 查询单个对象的挂号信息
     * @param ns_id  使用挂号的编号
     * @return
     * @throws Exception
     */
    Number_Message selectRegisterMessageOneService(String ns_id)throws  Exception;
}
