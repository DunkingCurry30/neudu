package com.dr.his.service.imp;

import com.dr.his.dao.ITHDao;
import com.dr.his.dao.Imp.imp.THDaoImp;
import com.dr.his.service.ITHService;


import java.sql.SQLException;

public class THServiceImp implements ITHService {
    ITHDao ithDao =new THDaoImp();

    @Override
    public int deleteGH(String n_u_id) throws SQLException {
        int list  =ithDao.dele(n_u_id);
        return list;
    }
}
