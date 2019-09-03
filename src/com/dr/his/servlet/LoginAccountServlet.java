package com.dr.his.servlet;

import com.dr.his.pojo.Acconut;
import com.dr.his.pojo.Muen;
import com.dr.his.service.IAcconutService;
import com.dr.his.service.imp.AcconutServiceImp;
import com.my.web.servlet.RequestBeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/LoginAccountServlet")
public class LoginAccountServlet extends HttpServlet {

    IAcconutService iAcconutService=  new AcconutServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
        //String a_account = request.getParameter("a_account");
     //  String a_pwd= request.getParameter("a_pwd");
        Acconut acconut= RequestBeanUtils.requestToBean(request,Acconut.class);


//        System.out.println("=============="+acconut);
        Acconut iAccount= null;
        try {
            iAccount = iAcconutService.loginSelectAccount(acconut);
            System.out.println(iAccount);
            if(iAccount.getU_date().toString()!= null) {
                iAccount.setU_date(iAccount.getU_date().toString().substring(0,10));
            }
        } catch (Exception e) {
            System.out.println("无注册日期");
        }
        System.out.println(iAccount);

        try {


//            System.out.println(iAccount);
            if(iAccount!=null){
                request.getSession().setAttribute("users",iAccount);
            }
            //用于循环滚动出菜单
            List<Muen> listMuen=iAcconutService.selectAccountMuenService(iAccount.getA_id());
            System.out.println(listMuen);
            if(listMuen!=null){
                request.getSession().setAttribute("listMenu",listMuen);


            }
//            response.sendRedirect("/index.jsp");
            request.getRequestDispatcher("index.jsp").forward(request,response);

          //  request.getSession().setAttribute("Pwd",pwd);
        }catch (Exception e){
//            response.sendRedirect("/login-page.jsp");
            request.getRequestDispatcher("login-page.jsp").forward(request,response);
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                     doPost(request,response);
    }
}
