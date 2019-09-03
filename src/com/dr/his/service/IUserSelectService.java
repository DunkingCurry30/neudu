package com.dr.his.service;

import com.dr.his.pojo.Users;

import java.sql.SQLException;

public interface IUserSelectService {
    Users selectUserService(Users users) throws SQLException;
}
