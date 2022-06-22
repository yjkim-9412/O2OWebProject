package Test;

import java.sql.Connection;
import java.sql.DriverManager;


public class testMySqlConnection {

    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://o2owebproject.cljtd97l7e0o.ap-northeast-2.rds.amazonaws.com:3306/O2OWebSite";
    private static final String USER = "JDBC";
    private static final String PW = "qwer1234";
    @org.junit.Test
    public void testConnection() throws Exception{Class.forName(DRIVER);
        try(Connection con = DriverManager.getConnection(URL, USER, PW)){
            System.out.println("성공");System.out.println(con);
    }catch (Exception e) {
            System.out.println("에러발생");e.printStackTrace();
        }

    }
}

