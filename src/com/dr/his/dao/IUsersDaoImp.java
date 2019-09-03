package com.dr.his.dao;

import com.dr.his.pojo.Users;

import java.sql.SQLException;

public interface IUsersDaoImp {
    Users Select(Users users) throws SQLException;
}
