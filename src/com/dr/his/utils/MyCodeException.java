package com.dr.his.utils;

/**
 * 断言  案例
 */
public class MyCodeException {


    //message 就是提示用户的信息
      public  static  void getMyException(final  String message)throws MyException {
           throw  new  MyException(message);
      }


      /**
       * 判断是一个字符串不能为空
       * message  就是提示用户的信息
       * ar  需要进断言的
       */
      public static   String   isNotNull(String message,String  ar)throws MyException{
            if(ar== null  || (ar=ar.trim()).length()==0){
                getMyException(message);
            }
          return   message;
      }

    /**
     * 判断是一个字符串为空
     * message  就是提示用户的信息
     * ar  需要进断言的
     */
    public static   String   isNull(String message,String  ar)throws MyException{
        if(ar!= null  || (ar=ar.trim()).length()!=0){
            getMyException(message);
        }
        return   message;
    }



      /*
      * 判断数子不为0
      *
      * */
      public static   String   isNotNumber(String message,int  ar)throws MyException {
          if (ar == 0) {
              getMyException(message);
          }
          return   message;
      }

    /**
     * 断言对象不为空
     */

    public static   String   isNotObj(String message,Object obj)throws MyException {
        if (obj ==null) {
            getMyException(message);
        }
        return   message;
    }


}
