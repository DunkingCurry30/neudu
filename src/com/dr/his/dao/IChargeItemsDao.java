package com.dr.his.dao;


import com.dr.his.pojo.ChargeItems;
import com.dr.his.pojo.Drugs;
import com.dr.his.pojo.PaymentTypes;

import java.sql.SQLException;
import java.util.List;

public interface IChargeItemsDao {
    /**
     * 通过单据编号查出收费项目信息
     * @param p_id
     * @return
     * @throws SQLException
     */
    List<ChargeItems> selectChargeItemsDao(String p_id) throws SQLException;
    void returnChargeItemsDao(String checkbox) throws SQLException;

    List<Drugs> selectDrugsDao() throws SQLException;

    void addPaymentAccountDao(String checkbox) throws Exception;

    List<PaymentTypes> selectPaymentTypesDao() throws SQLException;

    void addPaymentDao(String checkbox) throws SQLException;
}
