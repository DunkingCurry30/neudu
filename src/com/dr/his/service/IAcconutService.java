package com.dr.his.service;

import com.dr.his.pojo.Acconut;
import com.dr.his.pojo.Muen;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface IAcconutService {


    Acconut loginSelectAccount(Acconut acconut) throws Exception;


    List<Muen> selectAccountMuenService(String a_id) throws SQLException, Exception;

    int UpPwdAccount(Acconut acconut) throws Exception;


    int registService(Acconut acconut) throws Exception;

    ResultSet select() throws SQLException;
}
