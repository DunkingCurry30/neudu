package com.dr.test.utils;

import com.dr.his.utils.ThisUUID;
import org.junit.Test;

public class TestUid {
    @Test
    public void test01() throws Exception {
        for (int i=0;i<10;i++){
            System.out.println(ThisUUID.getUUID());
        }
    }
}
