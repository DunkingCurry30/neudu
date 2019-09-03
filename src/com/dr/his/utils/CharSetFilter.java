package com.dr.his.utils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

//表示需要进行进行拦截的地址
@WebFilter("/*")
public class CharSetFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        //需要拦截地址
    /*    HttpServletRequest request=(HttpServletRequest)req;
        String requestURI = request.getRequestURI();

        if(requestURI.contains("/XXOOO")){

        }*/
        chain.doFilter(req, resp);//放行


    }

    public void init(FilterConfig config) throws ServletException {

    }

}
