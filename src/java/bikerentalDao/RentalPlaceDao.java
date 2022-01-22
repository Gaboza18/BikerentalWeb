package bikerentalDao;

import java.util.*;
import java.sql.*;
import bikerental.*;
import bikerentalBean.*;

public class RentalPlaceDao {

    Scanner in = new Scanner(System.in, "euc-kr");
    DBconn dbc = new DBconn();
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    public List listSearchBike(String input) {
        List list = new ArrayList();
     
        
        String sql = "select * from 대여소 where ROADADDRESS like '%" + input + "%'"; //대여소 테이블에 지역을 입력하여 검색하는 SQL문을 사용하였다.
        try {
            rs = dbc.getRS(sql);
            while (rs.next()) { //while문에 리스트에 있는 데이터를 읽는다는 조건을 이용한다.
                RentalPlaceBean RPbean = new RentalPlaceBean();
                RPbean.setID(rs.getString(1)); //데이터 내용인 ID를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setBikerentalname(rs.getString(2)); //데이터 내용인 ID를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setRoadAddress(rs.getString(3)); //데이터 내용인 RoadAddress를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setNumberAddress(rs.getString(4)); //데이터 내용인 NumberAddress를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setLatitude(rs.getFloat(5)); //데이터 내용인 Latitude를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setHardness(rs.getFloat(6)); //데이터 내용인 Hardness를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setStartTime(rs.getString(7)); //데이터 내용인 StartTime를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setFinishTime(rs.getString(8)); //데이터 내용인 FinishTime를 RPbean 필드값을 get으로 읽어온다.
                RPbean.setBikeCount(rs.getString(9)); //데이터 내용인 BikeCount를 RPbean 필드값을 get으로 읽어온다. 
                
                list.add(RPbean);

            }
        } catch (SQLException e) {
            e.getMessage();
        }
        return list;
    }

}
