package com.dr.his.service.imp;


import com.dr.his.dao.IPaymentDao;
import com.dr.his.dao.Imp.imp.IPaymentDaoImp;
import com.dr.his.pojo.Payment;
import com.dr.his.service.IPaymentService;

import java.util.List;

public class IPaymentServiceImp implements IPaymentService {
    IPaymentDao ipaymentdao = new IPaymentDaoImp();

    /**
     *
     * @param p_id 单据编号
     * @return 查出的信息
     * @throws Exception
     */
    @Override
    public List<Payment> selectQueryListPayment(String p_id) throws Exception {
        List<Payment> payment = ipaymentdao.selectPaymentDao(p_id);
        return payment;
    }
}
