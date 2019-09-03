package com.dr.his.service;


import com.dr.his.pojo.ChargeItems;
import com.dr.his.pojo.Drugs;
import com.dr.his.pojo.ChargeItems;
import com.dr.his.pojo.Drugs;
import com.dr.his.pojo.PaymentTypes;

import java.sql.SQLException;
import java.util.List;

public interface IChargeItemsService {
    /**
     * 通过单据查出收费项目信息
     * @param p_id
     * @return
     * @throws Exception
     */
    List<ChargeItems> selectQueryListChargeItems(String p_id) throws Exception;

    /**
     * 进行退费操作
     * @param checkbox
     * @throws SQLException
     */
    void returnChargeitemService(String checkbox) throws SQLException;

    /**
     * 返回药品信息列表
     * @return
     * @throws SQLException
     */
    List<Drugs> selectQueryListDrugs() throws SQLException;

    /**
     * 添加收费信息表
     * @param checkbox
     * @throws SQLException
     */
    void addPaymentAccountService(String checkbox) throws Exception;

    /**
     * 返回结算类型列表
     * @return
     * @throws SQLException
     */
    List<PaymentTypes> selectQueryListPaymentTypes() throws SQLException;

    void addPaymentService(String checkbox) throws SQLException;
}

