package com.dr.his.servlet.users;

import com.dr.his.pojo.Users;
import com.dr.his.service.IUserSelectService;
import com.dr.his.service.imp.UsersSelectServiceImp;
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

@WebServlet("/UsersSelectServlet")
public class UsersSelectServlet extends HttpServlet {
    IUserSelectService iUserSelectService=new UsersSelectServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Users users= RequestBeanUtils.requestToBean(request, Users.class);
        System.out.println("-------");
        System.out.println(users);
        Users users1= null;
        try {
            users1 = iUserSelectService.selectUserService(users);
            JSONObject jsonObject=new JSONObject();
            jsonObject.accumulate("se",users1);
            System.out.println(jsonObject);
            PrintWriter writer = response.getWriter();
            writer.print(jsonObject);



        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
