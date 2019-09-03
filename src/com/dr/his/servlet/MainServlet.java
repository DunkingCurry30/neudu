package com.dr.his.servlet;

import com.dr.his.service.IAcconutService;
import com.dr.his.service.imp.AcconutServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
    IAcconutService iAcconutService= new AcconutServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //查看外科科室的数量。
        try {
            System.out.println("222222222222222222222222222222222222222");
            ResultSet kanzhenN=iAcconutService.select();
            System.out.println("11111111111111111111111111111111111111111111");
            System.out.println(kanzhenN);
            request.getSession().setAttribute("waike",kanzhenN);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("main.jsp");
    }
}
