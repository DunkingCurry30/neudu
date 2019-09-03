package com.dr.his.servlet.Dpartment;

import com.dr.his.pojo.Number_Message;
import com.dr.his.service.ITHService;

import com.dr.his.service.imp.THServiceImp;
import com.my.web.servlet.RequestBeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/THServlet")
public class THServlet extends HttpServlet {
                 ITHService ithService=   new THServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("111111111111111111111111111");
        Number_Message list=RequestBeanUtils.requestToBean(request,Number_Message.class);
        System.out.println(list);
        try {
            int list1 = ithService.deleteGH(list.getN_u_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
