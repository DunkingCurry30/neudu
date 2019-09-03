package com.dr.his.servlet.searchFee;

import com.dr.his.service.IChargeItemsService;
import com.dr.his.service.imp.IChargeItemsServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

;

@WebServlet("/SearchFeeAccountServlet")
public class SearchFeeAccountServlet extends HttpServlet {
    IChargeItemsService iChargeItemsService = new IChargeItemsServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checkbox = request.getParameter("checkbox");
        System.out.println(checkbox);
        try {
            iChargeItemsService.addPaymentAccountService(checkbox);
            iChargeItemsService.addPaymentService(checkbox);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
