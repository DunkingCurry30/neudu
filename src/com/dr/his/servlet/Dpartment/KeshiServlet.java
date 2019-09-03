package com.dr.his.servlet.Dpartment;

import com.dr.his.pojo.Dept;
import com.dr.his.pojo.Doctor;
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
import java.sql.SQLException;
import java.util.List;

@WebServlet("/KeshiServlet")
public class KeshiServlet extends HttpServlet {
    ISettlementtypesService iSettlementtypesService =new SettlementtypesServicelmp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Dept dept = RequestBeanUtils.requestToBean(request,Dept.class);
        System.out.println("sdsddsd");
        System.out.println(dept);
        List<Doctor> list3 = null;
        try {
            list3 = iSettlementtypesService.getDocType(dept);
            System.out.println("ssssssss");
            System.out.println(list3);
            request.setAttribute("yishenglist",list3);


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
