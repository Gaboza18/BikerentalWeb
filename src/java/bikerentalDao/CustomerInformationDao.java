package bikerentalDao;

import java.util.*;
import java.sql.*;
import bikerental.*;
import bikerentalBean.*;

public class CustomerInformationDao {

    Scanner in = new Scanner(System.in, "euc-kr");
    DBconn dbc = new DBconn();
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    public List listCustomerInformation(String input) {
        List list = new ArrayList();

        String sql = "select * from 고객 where SOCIALSECURITYNUMBER like '%" + input + "%'"; 
        try {
            rs = dbc.getRS(sql);
            while (rs.next()) {
                CustomerInformationBean CIBbean = new CustomerInformationBean();
                CIBbean.setCUSTOMER(rs.getString(1));
                CIBbean.setSOCIALSECURITYNUMBER(rs.getString(2));
                CIBbean.setAGE(rs.getString(3));

                list.add(CIBbean);

            }
        } catch (SQLException e) {
            e.getMessage();
        }
        return list;
    }
}
