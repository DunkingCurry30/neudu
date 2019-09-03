package com.dr.his.service.imp;

import com.dr.his.dao.ISettlementtypesDao;
import com.dr.his.dao.Imp.imp.SettlementtypesDaolmp;

import com.dr.his.pojo.*;
import com.dr.his.service.ISettlementtypesService;

import java.sql.SQLException;
import java.util.List;

public class SettlementtypesServicelmp implements ISettlementtypesService {
                 ISettlementtypesDao iSettlementtypesDao=new SettlementtypesDaolmp();
    @Override
    public List<Settlementtypes> setAllType() throws SQLException {
        List<Settlementtypes> list=iSettlementtypesDao.selectAllType();

        return list;
    }

    @Override
    public List<Medicaltypes> getMedicalType() throws SQLException {
         List<Medicaltypes> list=iSettlementtypesDao.selectMedicalType();
        return list;
    }

    @Override
    public List<Numbertypes> getNumType() throws SQLException {
        List<Numbertypes> numbertypes=iSettlementtypesDao.selectNumType();
        return numbertypes;
    }

    @Override
    public List<Dept> getDpType() throws SQLException {
        List<Dept> numbertypes=iSettlementtypesDao.selectDeptType();
        return numbertypes;
    }

    @Override
    public List<Doctor> getDocType(Dept dept) throws SQLException {
        List<Doctor> list=iSettlementtypesDao.selectDocType( dept);
        return list;
    }

    @Override
    public int setEsureservice(Number_Message list) throws Exception {
        int list1=iSettlementtypesDao.InserMannger(list);
        return list1;
    }

    @Override
    public List<Number_Message> selectMasege(String n_u_id_number) throws SQLException {
        List<Number_Message>  list=iSettlementtypesDao.selectMasege(n_u_id_number);
        return list;
    }



}
