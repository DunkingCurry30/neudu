package com.dr.his.dao;

import com.dr.his.pojo.Acconut;
import com.dr.his.pojo.Muen;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface IAcconutDao {
    Acconut loginDaoAccount(Acconut acconut) throws Exception;


    List<Muen> selectAccountMuenDao(String a_id) throws Exception;

    int upPwdDaoAccount(Acconut acconut)throws  Exception;



    int reGsterDaoAccount(Acconut acconut) throws Exception;

    ResultSet selectkanzhen() throws SQLException;
}
