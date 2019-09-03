package com.dr.his.dao.Imp.imp;

import com.dr.his.dao.ITHDao;
import com.dr.his.utils.C3p0Util;

import java.sql.SQLException;

public class THDaoImp implements ITHDao {
    @Override
    public int dele(String n_u_id) throws SQLException {
       String sql= "DELETE from number_message WHERE n_u_id =?";
        int update = C3p0Util.update(sql, n_u_id);
        return update;
    }
}
