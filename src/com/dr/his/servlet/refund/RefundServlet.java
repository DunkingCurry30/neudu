package com.dr.his.servlet.refund;


import com.dr.his.service.IPaymentService;
import com.dr.his.service.imp.IPaymentServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RefundServlet")
public class RefundServlet extends HttpServlet {

    IPaymentService iPaymentService = new IPaymentServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       request.getRequestDispatcher("refund.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
