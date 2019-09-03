package com.dr.his.service;


import com.dr.his.pojo.Payment;

import java.util.List;

public interface IPaymentService {
    /**
     * 通过单据编号查出发票信息
     * @param p_id 单据编号
     * @return 查出的信息
     * @throws Exception
     */
    List<Payment> selectQueryListPayment(String p_id) throws Exception;

}
