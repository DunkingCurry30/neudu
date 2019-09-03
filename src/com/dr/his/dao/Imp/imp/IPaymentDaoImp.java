package com.dr.his.dao.Imp.imp;

import com.dr.his.dao.IPaymentDao;
import com.dr.his.pojo.Payment;
import com.dr.his.utils.C3p0Util;

import java.sql.SQLException;
import java.util.List;

public class IPaymentDaoImp implements IPaymentDao {

    @Override
    public List<Payment> selectPaymentDao(String p_id) throws SQLException {
        String sql = "select p_id,p_total_money,p_money,p_money1,p_money2,p_return_money,pt_name,u_name " +
                "from payment inner join paymenttypes on p_mark=pt_mark where p_id = ?;";
        return C3p0Util.queryList(sql, Payment.class, p_id);
    }
}
