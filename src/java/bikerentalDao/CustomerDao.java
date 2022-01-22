package bikerentalDao;

import java.util.*;
import java.io.*;
import java.sql.*;
import bikerental.*;

public class CustomerDao {

    Scanner in = new Scanner(System.in, "euc-kr");
    DBconn dbc = new DBconn();
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    public void insertCustomer(String name, String number, String age) throws IOException, NumberFormatException {

        String sql = "insert into 고객(CUSTOMER,SOCIALSECURITYNUMBER,AGE)" //고객의 이름,전화번호,나이를 입력받는 SQL문을 사용하였다.
                + "values('" + name + "','" + number + "','" + age + "')";
        try {
            conn = dbc.getConn();
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("고객님의 정보가 등록되었습니다.\n");
        } catch (SQLException e) {

        }

    }

    public void deleteCustomer(String name, String number, String age) throws IOException, NumberFormatException {

        String sql = "delete from 고객  where CUSTOMER = '" + name + "' and SOCIALSECURITYNUMBER = '" + number + "' and AGE = '" + age + "'";
                //고객 테이블 에서 이름,전화번호,나이를 찾아 삭제하는 SQL문을 사용하였다.
        try {
            conn = dbc.getConn();
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("고객님의 정보가 삭제되었습니다.\n");
        } catch (SQLException e) {

        }

    }

    public void updateCustomer(String name, String updatename) throws IOException, NumberFormatException {

        String sql = "update 고객 set customer='" + updatename + "' where CUSTOMER ='" + name + "'"; //고객 테이블 에서 이름을 찾아 수정하는 SQL문을 사용하였다.

        try {
            conn = dbc.getConn();
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("고객님의 이름이 수정되었습니다.\n");
        } catch (SQLException e) {

        }
    }

}
