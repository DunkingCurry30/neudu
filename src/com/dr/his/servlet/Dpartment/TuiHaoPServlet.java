package com.dr.his.servlet.Dpartment;

import com.dr.his.pojo.Number_Message;
import com.dr.his.service.ISettlementtypesService;

import com.dr.his.service.imp.SettlementtypesServicelmp;
import com.my.web.servlet.RequestBeanUtils;
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

@WebServlet("/TuiHaoPServlet")
public class TuiHaoPServlet extends HttpServlet {
    ISettlementtypesService iSettlementtypesService=new SettlementtypesServicelmp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Number_Message list= RequestBeanUtils.requestToBean(request,Number_Message.class);
        try {
            List<Number_Message> list1=iSettlementtypesService.selectMasege(list.getN_u_id_number());
            System.out.println("2222222222222222222222222222222222222");
            System.out.println(list1);
            JSONObject jsonObject=new JSONObject();
            jsonObject.put("ma",list1);
            System.out.println();
            System.out.println(jsonObject);
            PrintWriter printWriter=response.getWriter();
            printWriter.print(jsonObject);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
