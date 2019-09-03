package com.dr.his.service.imp;

import com.dr.his.dao.IUsersDaoImp;
import com.dr.his.dao.Imp.imp.UsersDaoImp;
import com.dr.his.pojo.Users;
import com.dr.his.service.IUserSelectService;

import java.sql.SQLException;

public class UsersSelectServiceImp implements IUserSelectService {
                IUsersDaoImp iUsersDaoImp=new UsersDaoImp();
    @Override
    public Users selectUserService(Users users) throws SQLException {

        return    iUsersDaoImp.Select(users);
    }
}
