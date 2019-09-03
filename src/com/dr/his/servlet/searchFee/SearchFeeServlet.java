package com.dr.his.servlet.searchFee;


import com.dr.his.pojo.Drugs;
import com.dr.his.pojo.PaymentTypes;
import com.dr.his.service.IChargeItemsService;
import com.dr.his.service.imp.IChargeItemsServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/searchFeeServlet")
public class SearchFeeServlet extends HttpServlet {
    IChargeItemsService iChargeItemsService = new IChargeItemsServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          try {
              /**
               * 返回药品信息列表
               */
              List<Drugs> drugs = iChargeItemsService.selectQueryListDrugs();
              System.out.println(drugs);
              request.getSession().setAttribute("DrugList",drugs);
              /**
               * 返回结算类型列表
               */
              List<PaymentTypes> paymentTypes = iChargeItemsService.selectQueryListPaymentTypes();
              System.out.println(paymentTypes);
              request.getSession().setAttribute("PaymentTypeList",paymentTypes);

            }catch (Exception  e){
                e.printStackTrace();
            }

        request.getRequestDispatcher("searchFee.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request,response);
    }
}
