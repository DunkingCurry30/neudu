package com.dr.his.servlet;

import com.dr.his.pojo.Acconut;
import com.dr.his.service.IAcconutService;
import com.dr.his.service.imp.AcconutServiceImp;
import com.my.web.servlet.RequestBeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpPwdServlet")
public class UpPwdServlet extends HttpServlet {
    IAcconutService iAcconutService=new AcconutServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Acconut acconut=RequestBeanUtils.requestToBean(request, Acconut.class);
        System.out.println("1");
        try {
            int iaccount = iAcconutService.UpPwdAccount(acconut);
            System.out.println("2");
            if(iaccount==0){
                request.getSession().setAttribute("pwd",iaccount);
                System.out.println(acconut.getA_pwd());
                System.out.println("3");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("login-page.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }
}
