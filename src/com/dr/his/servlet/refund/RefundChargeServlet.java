package com.dr.his.servlet.refund;


import com.dr.his.pojo.ChargeItems;
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
import java.util.List;

@WebServlet("/RefundChargeServlet")
public class RefundChargeServlet extends HttpServlet {

    IChargeItemsService iChargeItemsService = new IChargeItemsServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String p_id = request.getParameter("p_id");

        try {
            //获取收费项目信息
            List<ChargeItems> chargeLists = iChargeItemsService.selectQueryListChargeItems(p_id);


            JSONObject jsonObject_1 = new JSONObject();

            jsonObject_1.put("base",chargeLists);
            //*
            // 打印后台查询出的数据
            //*
            System.out.println("-----------收费项目信息------------");
            System.out.println(jsonObject_1);

            PrintWriter writer = response.getWriter();
            writer.print(jsonObject_1);
            writer.flush();
            writer.close();
        } catch (IndexOutOfBoundsException e) {
            System.out.println("没有查询到收费信息");;
        }catch (Exception e){
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
