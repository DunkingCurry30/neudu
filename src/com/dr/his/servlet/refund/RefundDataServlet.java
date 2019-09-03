package com.dr.his.servlet.refund;


import com.dr.his.pojo.Payment;
import com.dr.his.service.IPaymentService;
import com.dr.his.service.imp.IPaymentServiceImp;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/RefundDataServlet")
public class RefundDataServlet extends HttpServlet {

    IPaymentService iPaymentService = new IPaymentServiceImp();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String p_id = request.getParameter("p_id");
        System.out.println(p_id);
        try{
            List<Payment> paymentLists = iPaymentService.selectQueryListPayment(p_id);
            //获取单据信息
            Payment payments = paymentLists.get(0);

            JSONObject jsonObject_1 = new JSONObject();

            jsonObject_1.put("date",payments);
            //*
            // 打印后台查询出的数据
            //*
            System.out.println("-----------单据信息------------");
            System.out.println(jsonObject_1);

            PrintWriter writer = response.getWriter();
            writer.print(jsonObject_1);
            writer.flush();
            writer.close();


        }catch (Exception e)
        {
            System.out.println("没有查询到信息");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
