package com.dr.his.service;

import com.dr.his.pojo.Users;

import java.util.List;

public interface IUserService {
    List<Users> selectQueryListUser()throws  Exception;;
}
