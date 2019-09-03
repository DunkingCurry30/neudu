package com.dr.his.service.imp;


import com.dr.his.dao.IChargeItemsDao;
import com.dr.his.dao.Imp.imp.IChargeItemsDaoImp;

import com.dr.his.pojo.ChargeItems;
import com.dr.his.pojo.Drugs;
import com.dr.his.pojo.PaymentTypes;

import com.dr.his.service.IChargeItemsService;

import java.sql.SQLException;
import java.util.List;

public class IChargeItemsServiceImp implements IChargeItemsService {

    IChargeItemsDao ichageitemsdao =  new IChargeItemsDaoImp();
    /**
     *
     * @param p_id 单据编号
     * @return 查出的信息
     * @throws Exception
     */
    @Override
    public List<ChargeItems> selectQueryListChargeItems(String p_id) throws Exception {
        List<ChargeItems> chargeItems = ichageitemsdao.selectChargeItemsDao(p_id);
        return chargeItems;
    }

    /**
     * 进行退费操作
     * @param checkbox
     * @throws SQLException
     */
    @Override
    public void returnChargeitemService(String checkbox) throws SQLException {
        ichageitemsdao.returnChargeItemsDao(checkbox);
    }

    /**
     * 查询药品
     * @return
     * @throws SQLException
     */
    @Override
    public List<Drugs> selectQueryListDrugs() throws SQLException {
        List<Drugs> drugs = ichageitemsdao.selectDrugsDao();
        return drugs;
    }

    @Override
    public void addPaymentAccountService(String checkbox) throws Exception {
        ichageitemsdao.addPaymentAccountDao(checkbox);
    }

    @Override
    public List<PaymentTypes> selectQueryListPaymentTypes() throws SQLException {
        List<PaymentTypes> paymentTypes = ichageitemsdao.selectPaymentTypesDao();
        return paymentTypes;
    }

    @Override
    public void addPaymentService(String checkbox) throws SQLException {
        ichageitemsdao.addPaymentDao(checkbox);
    }

}
