package com.dr.his.utils;

/**
 * 自定义异常类
 */
public class MyException  extends  RuntimeException {


    public MyException() {
    }

    public MyException(String message) {
        super(message);
    }

    public MyException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
