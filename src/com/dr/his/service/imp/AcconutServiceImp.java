package com.dr.his.service.imp;

import com.dr.his.dao.IAcconutDao;
import com.dr.his.dao.Imp.imp.AcconutDaoImp;
import com.dr.his.pojo.Acconut;
import com.dr.his.pojo.Muen;
import com.dr.his.service.IAcconutService;
import com.dr.his.utils.MyCodeException;
import com.dr.his.utils.ThisPassWordSHA;
import com.dr.his.utils.ThisUUID;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AcconutServiceImp implements IAcconutService {
   IAcconutDao iAcconutDao= new AcconutDaoImp();
    public AcconutServiceImp() {
    }


    @Override
    public Acconut loginSelectAccount(Acconut acconut) throws Exception {


        System.out.println("2");
        MyCodeException.isNotNull("账号不能为空",acconut.getA_account());
        MyCodeException.isNotNull("密码不能为空",acconut.getA_pwd());
        //加密密码

        acconut.setA_pwd( ThisPassWordSHA.getFormatSHA(acconut.getA_pwd()));
        //调用DAO层，执行SQL语句，查找数据库。
        Acconut loginAccount=iAcconutDao.loginDaoAccount(acconut);
        System.out.println("4");
        MyCodeException.isNotObj("当前账号不存在",loginAccount);

        return loginAccount;
    }

    /**ps
     *通过账号id来查询对应的菜单权限
     * @param a_id 某个账号的ID
     * @return 某个账号对应的菜单权限。
     * @throws SQLException
     */
    @Override
    public List<Muen> selectAccountMuenService(String a_id) throws Exception {
        System.out.println("11");
        List<Muen> listmuen = iAcconutDao.selectAccountMuenDao(a_id);
        System.out.println("13");
        return listmuen;
    }


    /**ps
     * 修改密码
     * @param acconut  通过账号修改密码
     * @return
     * @throws Exception
     */
    @Override
    public int UpPwdAccount(Acconut acconut) throws Exception {

        int acconut1=iAcconutDao.upPwdDaoAccount(acconut);
        return  acconut1;
    }

    @Override
    public int registService(Acconut acconut) throws Exception {
        acconut.setA_id(ThisUUID.getSplitUUID());
        acconut.setA_pwd(ThisPassWordSHA.getFormatSHA(acconut.getA_pwd()));
                      int acconut1= iAcconutDao.reGsterDaoAccount(acconut);
        return acconut1;
    }

    /**
     * 查看外科科室的数量。
     * @return
     */
    @Override
    public ResultSet select() throws SQLException {
        ResultSet kanzhenN=iAcconutDao.selectkanzhen();
        return kanzhenN;
    }


}
