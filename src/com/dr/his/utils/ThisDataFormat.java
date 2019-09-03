package com.dr.his.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ThisDataFormat {
    
    //格式化时间的类型
    private  String  path;


    public ThisDataFormat(String path) {
        this.path = path;
    }

    /**
     * 格式时间
     */
    public   String getDate(Date date){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(path);
        String format = simpleDateFormat.format(date);
       return   format;
    }

}
