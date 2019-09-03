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

@WebServlet("/EnsureGuaHaoServlet")
public class EnsureGuaHaoServlet extends HttpServlet {
            ISettlementtypesService iSettlementtypesService=new SettlementtypesServicelmp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Number_Message  list=RequestBeanUtils.requestToBean(request,Number_Message.class);
        System.out.println(list);

        try {
            int     number_messages = iSettlementtypesService.setEsureservice(list);
            System.out.println("111111111111111111111");
            System.out.println(number_messages);
            List<Number_Message> list1=iSettlementtypesService.selectMasege(list.getN_u_id_number());
            System.out.println("2222222222222");
            System.out.println(list);
            JSONObject jsonObject=new JSONObject();
            System.out.println("333333333333333");
            jsonObject.accumulate("masege",list1);
            System.out.println(jsonObject);
            PrintWriter printWriter=response.getWriter();
            printWriter.print(jsonObject);

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
