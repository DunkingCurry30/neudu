package com.dr.his.service.imp;


import com.dr.his.dao.IRegisterMessageDao;
import com.dr.his.dao.Imp.imp.IRegisterMessageDaoImp;

import com.dr.his.service.IRegisterMessageService;


public class IRegisterMessageServiceImp implements IRegisterMessageService {
   IRegisterMessageDao iRegisterMessageDao = new IRegisterMessageDaoImp();

    /**
     * 查询单个对象的挂号信息
     * @param rs_id  使用挂号的编号
     * @return
     * @throws Exception
     */
    @Override
    public com.dr.his.pojo.Number_Message selectRegisterMessageOneService
    (String rs_id) throws Exception {
        return iRegisterMessageDao.selectRegisterMessageOneDao(rs_id);
    }

}
