package com.dr.his.servlet.searchFee;


import com.dr.his.pojo.Drugs;
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
import java.util.List;

@WebServlet("/SearchFeeAddServlet")
public class SearchFeeAddServlet extends HttpServlet {
    IChargeItemsService iChargeItemsService = new IChargeItemsServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dr_name = request.getParameter("dr_name");
        try {
            List<Drugs> drugs = iChargeItemsService.selectQueryListDrugs();
            System.out.println(dr_name);
            //比对药品信息，返回选中的药品信息
            int j = 0;
            for (int i = 0; i <drugs.size() ; i++) {
                System.out.println(drugs.get(i).getDr_name());
                if (drugs.get(i).getDr_name().compareTo(dr_name)==0)
                {
                    j=i;
                    break;
                }
            }

            JSONObject jsonObject_1 = new JSONObject();

            jsonObject_1.put("drug_lists",drugs.get(j));
            //*
            // 打印后台查询出的数据
            //*
            System.out.println("-----------药品信息------------");
            System.out.println(jsonObject_1);

            PrintWriter writer = response.getWriter();
            writer.print(jsonObject_1);
            writer.flush();
            writer.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
