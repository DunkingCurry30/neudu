package com.dr.his.dao;


import com.dr.his.pojo.Payment;

import java.sql.SQLException;
import java.util.List;

public interface IPaymentDao {
    /**
     *
     * @param p_id：单据编号
     * @return 查出的数据
     * @throws SQLException
     */
    List<Payment> selectPaymentDao(String p_id) throws SQLException;
}
