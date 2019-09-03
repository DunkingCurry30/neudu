package com.dr.his.dao.Imp.imp;

import com.dr.his.dao.IAcconutDao;
import com.dr.his.pojo.Acconut;
import com.dr.his.pojo.Muen;
import com.dr.his.utils.C3p0Util;
import com.dr.his.utils.ThisPassWordSHA;
import com.dr.his.utils.ThisUUID;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AcconutDaoImp implements IAcconutDao {
    @Override
    public Acconut loginDaoAccount(Acconut acconut)throws Exception {
       // String sql="SELECT*from acconut where a_account=? and a_pwd=? ";
            //Acconut acconut1 = C3p0Util.queryOne(sql, Acconut.class, acconut.getA_account(), acconut.getA_pwd());
        String sql= "SELECT a_mark,a_id,a_email,a_account,u_name,u_sex, u_date,u_adder,u_age,u_medicine_number,j_name FROM(SELECT*FROM users u INNER JOIN job j on u.j_u_id=j.j_id ) uj \n" +
                "INNER JOIN account a on uj.a_u_id= a.a_id AND a.a_account=? and a.a_pwd=?";
        System.out.println(acconut.getA_pwd());
        Acconut acconut1 = C3p0Util.queryOne(sql,Acconut.class,acconut.getA_account(),acconut.getA_pwd());
        System.out.println("3");
        return acconut1 ;
    }

    @Override
    public List<Muen> selectAccountMuenDao(String a_id) throws Exception {
        String sql="select *from account_menu a INNER JOIN menu m on  a.m_id=m.m_id and a.a_id=?";
        List<Muen> muens = C3p0Util.queryList(sql, Muen.class, a_id);
        System.out.println("12");
        return muens;
    }

    @Override
    public int upPwdDaoAccount(Acconut acconut)throws Exception {
        String sql="UPDATE account SET a_pwd=? where a_account=?";
        System.out.println(acconut.getA_pwd());
        System.out.println(acconut.getA_id());
        acconut.setA_pwd( ThisPassWordSHA.getFormatSHA(acconut.getA_pwd()));
        int acconut2 =C3p0Util.update(sql,acconut.getA_pwd(),acconut.getA_account());
        System.out.println(  "修改后"+acconut.getA_pwd());
        System.out.println("修改成功");
        return acconut2;
    }

    @Override
    public int reGsterDaoAccount(Acconut acconut) throws Exception {
        //通过事务
        Connection connection=C3p0Util.getConn();
        connection.setAutoCommit(false);

        String sql1="INSERT INTO  account(a_id,a_account,a_pwd,a_email,a_mark)VALUES(?,?,?,?,?)";
          //int ok= C3p0Util.update(sql3,acconut.getA_id(),acconut.getA_account(),acconut.getA_pwd(),acconut.getA_email());
        String sql2="INSERT into users (u_id,a_u_id,j_u_id) VALUES(?,?,?)";

        String sql3="INSERT  INTO account_menu (a_id,m_id)  VALUES(?,?)";
        String sql4="INSERT  INTO account_menu (a_id,m_id)  VALUES(?,?)";
        String sql5="INSERT  INTO account_menu (a_id,m_id)  VALUES(?,?)";


        PreparedStatement preparedStatement1 = connection.prepareStatement(sql1);
        preparedStatement1.setString(1,acconut.getA_id());
        preparedStatement1.setString(2,acconut.getA_account());
        preparedStatement1.setString(3,acconut.getA_pwd());
        preparedStatement1.setString(4,acconut.getA_email());
        preparedStatement1.setString(5,"0");
        PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
        preparedStatement2.setString(1,ThisUUID.getUUID());
        preparedStatement2.setString(2,acconut.getA_id());
        preparedStatement2.setString(3, "58d50383feb234cabbc47c1934951501");
      PreparedStatement preparedStatement3= connection.prepareStatement(sql3);
      preparedStatement3.setString(1,acconut.getA_id());
      preparedStatement3.setInt(2,1);
        PreparedStatement preparedStatement4= connection.prepareStatement(sql4);
        preparedStatement4.setString(1,acconut.getA_id());
        preparedStatement4.setInt(2,3);
        PreparedStatement preparedStatement5= connection.prepareStatement(sql5);
        preparedStatement5.setString(1,acconut.getA_id());
        preparedStatement5.setInt(2,4);

      int i=0;
       i+= preparedStatement1.executeUpdate();
       i+= preparedStatement2.executeUpdate();
       i+= preparedStatement3.executeUpdate();
        i+= preparedStatement4.executeUpdate();
        i+= preparedStatement5.executeUpdate();
       connection.commit();
        connection.setAutoCommit(true);


        return i;

    }

    @Override
    public ResultSet selectkanzhen() throws SQLException {
        Connection connection=C3p0Util.getConn();
        String sql="select COUNT(*)FROM number_message  where  keshitype='外科'";
     PreparedStatement P = connection.prepareStatement(sql);

        return (ResultSet) P;
    }


}
