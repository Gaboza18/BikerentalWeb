
package bikerentalDao;

import java.util.*;
import java.sql.*;
import bikerental.*;
import bikerentalBean.*;

public class BikeManagementDao {

    Scanner in = new Scanner(System.in, "euc-kr"); //한국어를 읽기위한 스캐너이다.
    DBconn dbc = new DBconn(); //DBconn연결
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    public List BikeManage(String input) {
        List list = new ArrayList();
     
        
        String sql = "select * from 관리 where BIKERENTALNAME like '%" + input + "%'"; //BIKERENTALNAME을 입력하여 찾는 SQL문이다.
        try {
            rs = dbc.getRS(sql);
            while (rs.next()) { //while문에 리스트에 있는 데이터를 읽는다는 조건을 사용
                BikeManagementBean BMbean = new BikeManagementBean(); 
                BMbean.setID(rs.getString(1));  //데이터 내용인 ID를 BMbean 필드값을 get으로 읽는다.
                BMbean.setBikerentalname(rs.getString(2));  //데이터 내용인 BIkerentalname을 BMbean 필드값을 get으로 읽는다.
                BMbean.setMANAGEMENTAGENCY(rs.getString(3)); //데이터 내용인 MANAGEMENTAGENCY를 BMbean 필드값을 get으로 읽는다.
                BMbean.setAIRINJECTORTYPE(rs.getString(4));  //데이터 내용인 AIRINJECTORTYPE를 BMbean 필드값을 get으로 읽는다.
                BMbean.setAIRINJECTOR(rs.getString(5));  //데이터 내용인 AIRINJECTOR BMbean 필드값을 get으로 읽는다.
                BMbean.setHOLDER(rs.getString(6));  //데이터 내용인 HOLDER를 BMbean 필드값을 get으로 읽는다.
                BMbean.setREPAIRSTAND(rs.getString(7));  //데이터 내용인 REPAIRSTAND를 BMbean 필드값을 get으로 읽는다.
                
                list.add(BMbean); //계속해서 리스트를 추가한다.

            }
        } catch (SQLException e) {
            e.getMessage();
        }
        return list;
    }

}

