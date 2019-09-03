package com.dr.test.utils;

import com.dr.his.utils.C3p0Util;
import org.junit.Test;

import java.sql.Connection;
import java.sql.SQLException;

public class TestDb {
    @Test
    public void test() throws SQLException {
        Connection conn = C3p0Util.getConn();
        System.out.println("成功"+conn);
    }
}
