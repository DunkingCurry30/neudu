package com.dr.his.service;

import com.dr.his.pojo.*;

import java.sql.SQLException;
import java.util.List;

public interface ISettlementtypesService {
    List<Settlementtypes> setAllType() throws SQLException;

    List<Medicaltypes> getMedicalType() throws SQLException;

    List<Numbertypes> getNumType() throws SQLException;

    List<Dept> getDpType() throws SQLException;








    List<Doctor> getDocType(Dept list) throws SQLException;

    int setEsureservice(Number_Message list) throws Exception;



    List<Number_Message> selectMasege(String n_u_id_number) throws SQLException;


}
