package com.dr.his.servlet.refund;


import com.dr.his.service.IChargeItemsService;
import com.dr.his.service.imp.IChargeItemsServiceImp;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/RefundReturnServlet")
public class RefundReturnServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IChargeItemsService iChargeItemsService = new IChargeItemsServiceImp();
//        List<ChargeItems> chargeItems = (List<ChargeItems>) RequestBeanUtils.requestToBean(request, ChargeItems.class);
        String checkbox = request.getParameter("checkbox");
        System.out.println(checkbox);
        try {

            iChargeItemsService.returnChargeitemService(checkbox);

            JSONObject jsonObject = new JSONObject();
            if (checkbox==null)
                jsonObject.put("pdd",null);
            else
                jsonObject.put("pdd",checkbox);
            //*
            // 打印后台查询出的数据
            //*

            PrintWriter writer = response.getWriter();
            writer.print(jsonObject);
            writer.flush();
            writer.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
