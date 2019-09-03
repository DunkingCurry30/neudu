package com.dr.his.servlet.searchFee;

import com.dr.his.pojo.Number_Message;
import com.dr.his.service.IRegisterMessageService;
import com.dr.his.service.imp.IRegisterMessageServiceImp;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SearchFeeDataServlet")
public class SearchFeeDataServlet extends HttpServlet {
    IRegisterMessageService iRegisterMessageService = new IRegisterMessageServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String p_id = request.getParameter("p_id");
        try {
            Number_Message number_message = iRegisterMessageService.selectRegisterMessageOneService(p_id);
            //取date字符串前10位，即日期
            number_message.setKanzhendate(number_message.getKanzhendate().toString().substring(0,10));
            JSONObject jsonObject_1 = new JSONObject();

            jsonObject_1.put("number_message", number_message);
            //*
            // 打印后台查询出的数据
            //*
            System.out.println("-----------挂号信息------------");
            System.out.println(jsonObject_1);

            PrintWriter writer = response.getWriter();
            writer.print(jsonObject_1);
            writer.flush();
            writer.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
