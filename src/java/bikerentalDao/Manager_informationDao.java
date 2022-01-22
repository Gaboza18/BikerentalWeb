package bikerentalDao;

import java.util.*;
import java.sql.*;
import bikerental.*;
import bikerentalBean.*;

public class Manager_informationDao {

    Scanner in = new Scanner(System.in, "euc-kr");
    DBconn dbc = new DBconn();
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    public List LoginManager(String ID, String PASSWORD) {
        List list = new ArrayList();

        String sql = "select count (*) from 관리자 where ID ='"+ID+"' and PASSWORD='"+PASSWORD+"'"; //관리자 테이블 내의 아이디와 패스워드를 입력된 값과 비교하여 찾는다.
        try {
            rs = dbc.getRS(sql);
            while (rs.next()) {
                Manager_informationBean M_ibean = new Manager_informationBean();
               
                M_ibean.setNUMBER(rs.getInt(1));

                list.add(M_ibean);

            }
        } catch (SQLException e) {
            e.getMessage();
        }
        return list;
    }

}
