package com.dr.his.dao;

import com.dr.his.pojo.*;

import java.sql.SQLException;
import java.util.List;

public interface ISettlementtypesDao {
    List<Settlementtypes> selectAllType() throws SQLException;

    List<Medicaltypes> selectMedicalType() throws SQLException;

    List<Numbertypes> selectNumType() throws SQLException;

    List<Dept> selectDeptType() throws SQLException;
    /**
     * 查询结算类型的方法
     * @return
     * @throws Exception
     */
    List<PaymentTypes> selectQueryDaoElementTypes()throws Exception;









    List<Doctor> selectDocType(Dept dept) throws SQLException;


    int InserMannger(Number_Message list) throws Exception;


    List<Number_Message> selectMasege(String n_u_id_number) throws SQLException;


}
