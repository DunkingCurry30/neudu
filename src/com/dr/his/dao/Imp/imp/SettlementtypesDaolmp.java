package com.dr.his.dao.Imp.imp;

import com.dr.his.dao.ISettlementtypesDao;
import com.dr.his.pojo.*;
import com.dr.his.utils.C3p0Util;
import com.dr.his.utils.ThisDataFormat;
import com.dr.his.utils.ThisUUID;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class SettlementtypesDaolmp implements ISettlementtypesDao {
    @Override
    public List<Settlementtypes> selectAllType() throws SQLException {
       String sql="SELECT*from  paymenttypes " ;
        List<Settlementtypes>  list=C3p0Util.queryList(sql,Settlementtypes.class);
        return list;
    }

    @Override
    public List<Medicaltypes> selectMedicalType() throws SQLException {
        String sql="SELECT*FROM medicaltypes WHERE mt_mkar=0";
      List<Medicaltypes>  list= C3p0Util.queryList(sql,Medicaltypes.class);
        return list;
    }

    @Override
    public List<Numbertypes> selectNumType() throws SQLException {
        String sql="SELECT*FROM numbertypes WHERE nt_mkar=0";
        List<Numbertypes>  list= C3p0Util.queryList(sql,Numbertypes.class);
        return list;
    }

    @Override
    public List<Dept> selectDeptType() throws SQLException {
        String sql="SELECT*FROM dept WHERE d_mkar=0";
        List<Dept>  list= C3p0Util.queryList(sql,Dept.class);
        return list;
    }

    @Override
    public List<PaymentTypes> selectQueryDaoElementTypes() throws Exception {
        return null;
    }

    @Override
    public List<Doctor> selectDocType(Dept dept) throws SQLException {

        String sql=" select* FROM doctor INNER JOIN dept ON do_d_id=?";
        List<Doctor> doctors=C3p0Util.queryList(sql,Doctor.class,dept.getD_id());
        return  doctors;
    }

    @Override
    public int InserMannger(Number_Message list) throws Exception {
        String sql="INSERT  INTO number_message (n_u_id,n_u_name,n_u_age,n_u_sex,n_u_medicine_number,n_u_date,n_u_id_number,n_u_adder,jiesuantype,yiliaotype,haobietype,keshitype,laiyuantype,kanzhendate,money,Mssage_id,ns_numbet_date)" +
                "   values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now())";
        int i=C3p0Util.update(sql,ThisUUID.getUUID(),list.getN_u_name(),list.getN_u_age(),list.getN_u_sex(),list.getN_u_medicine_number(),list.getN_u_date(),list.getN_u_id_number()
        ,list.getN_u_adder(),list.getJiesuantype(),list.getYiliaotype(),list.getHaobietype(),list.getKeshitype(),list.getLaiyuantype(),list.getKanzhendate(),list.getMoney(),
                new ThisDataFormat("yyyyMMddHHmmsss").getDate(new Date()).toString());

        String sql1 = "UPDATE number_message SET p_id = mssage_id;";
        C3p0Util.update(sql1);
        return i;
    }

    @Override
    public List<Number_Message> selectMasege(String n_u_id_number) throws SQLException {
        String sql="SELECT *FROM number_message WHERE n_u_id_number=?";
        List<Number_Message> list   = C3p0Util.queryList(sql,Number_Message.class,n_u_id_number);
        return list;
    }




}
