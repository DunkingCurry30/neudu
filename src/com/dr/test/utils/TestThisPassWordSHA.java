package com.dr.test.utils;

import com.dr.his.utils.ThisPassWordSHA;
import org.junit.Test;

import java.security.NoSuchAlgorithmException;

public class TestThisPassWordSHA {
    @Test
    public void test() throws NoSuchAlgorithmException {
        for (int i=0;i<6;i++){
        System.out.println(ThisPassWordSHA.getFormatSHA("admin"));}
    }
}
