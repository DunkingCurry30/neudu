package com.dr.his.servlet.Dpartment;

import com.dr.his.pojo.*;
import com.dr.his.service.ISettlementtypesService;


import com.dr.his.service.imp.SettlementtypesServicelmp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/GuaHaoServlet")
public class GuaHaoServlet extends HttpServlet {
    ISettlementtypesService iSettlementtypesService =new SettlementtypesServicelmp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //获取结算类型;

        try {
            List<Settlementtypes> list = iSettlementtypesService.setAllType();
            System.out.println(list);
            request.setAttribute("jiesuanlist",list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //获取医疗类型

        try {
            List<Medicaltypes>  list1 = iSettlementtypesService.getMedicalType();
            System.out.println(list1);
            request.setAttribute("yiliaolist",list1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

//获取号别类型
        List<Numbertypes>  list2 = null;
        try {
            list2 = iSettlementtypesService.getNumType();
            System.out.println(list2);
            request.setAttribute("haobielist",list2);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //获取挂号科室
        List<Dept> list3= null;
        try {
            list3 = iSettlementtypesService.getDpType();
            request.setAttribute("keshilist",list3);
            System.out.println("keshie " +list3);
            //获取医生信息

        } catch (SQLException e) {
            e.printStackTrace();
        }




        request.getRequestDispatcher("guahao.jsp").forward(request,response);

    }
}
