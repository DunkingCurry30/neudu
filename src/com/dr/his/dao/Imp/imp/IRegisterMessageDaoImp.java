package com.dr.his.dao.Imp.imp;


import com.dr.his.dao.IRegisterMessageDao;

import com.dr.his.pojo.Number_Message;
import com.dr.his.utils.C3p0Util;

public class IRegisterMessageDaoImp implements IRegisterMessageDao {


    /**
     * 查询单个对象的挂号信息
     * @param p_id  使用挂号的单据号码
     * @return
     * @throws Exception
     */
    @Override
    public Number_Message selectRegisterMessageOneDao(String p_id) throws Exception {
        String sql="SELECT rm.kanzhendate,rm.n_u_id,rm.money,rm.n_u_id_number,rm.n_u_name,rm.n_u_age,rm.n_u_adder,rm.n_u_sex,rm.n_u_medicine_number \n" +
                "                FROM  number_message  rm  where  rm.p_id=?";

        return C3p0Util.queryOne(sql, com.dr.his.pojo.Number_Message.class,p_id);
    }

}
