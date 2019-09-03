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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
      IAcconutService iAcconutService=new AcconutServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Acconut acconut=RequestBeanUtils.requestToBean(request,Acconut.class);
        System.out.println(acconut);
        try {
            if(acconut!=null){
                int iaccount= iAcconutService.registService(acconut);
                response.sendRedirect("login-page.jsp");
            } else {
                response.sendRedirect("register-page.jsp");
            }}catch (Exception e) {
            response.sendRedirect("register-page.jsp");
            e.printStackTrace();
        }}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
