package com.dr.his.dao.Imp.imp;

import com.dr.his.dao.IUsersDaoImp;
import com.dr.his.pojo.Users;
import com.dr.his.utils.C3p0Util;

import java.sql.SQLException;

public class UsersDaoImp implements IUsersDaoImp {
    @Override
    public Users Select(Users users) throws SQLException {
        String sql="select *FROM users u WHERE u.u_mark!=1 and u.u_id_number=?";
        Users users1 = C3p0Util.queryOne(sql, Users.class, users.getU_id_number());
        return users1;
    }
}
