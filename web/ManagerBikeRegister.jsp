
<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>자전거 대여소 정보 등록</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <%
            Connection conn = null;
            Statement stmt = null;
            DBconn dbc = new DBconn();
            String ID = request.getParameter("ID");
            String Bikerentalname = request.getParameter("Bikerentalname");
            String Roadaddress = request.getParameter("Roadaddress");
            String Numberaddress = request.getParameter("Numberaddress");
            String Latitude = request.getParameter("Latitude");
            String Hardness = request.getParameter("Hardness");
            String Starttime = request.getParameter("Starttime");
            String Finishtime = request.getParameter("Finishtime");
            String Bikecount = request.getParameter("Bikecount");
            
            System.out.println("아이디는"+ID+" / 대여소이름은" +Bikerentalname);
            System.out.println("도로명주소는"+Roadaddress+" / 지번주소는" +Numberaddress);  
            System.out.println("위도는"+Latitude+" / 경도는" +Hardness); 
            System.out.println("시작시간"+Starttime+" / 종료시간" +Finishtime); 
            System.out.println("자전거 개수는"+Bikecount+"");
            
            String sql = "insert into 대여소(ID,BIKERENTALNAME,ROADADDRESS,NUMBERADDRESS,LATITUDE,HARDNESS,STARTTIME,FINISHTIME,BIKECOUNT) "
                    + "values('" + ID + "','" + Bikerentalname + "','" + Roadaddress + "','" + Numberaddress + "'"
                    + ",'" + Latitude + "','" + Hardness + "','" + Starttime + "','" + Finishtime + "','" + Bikecount + "')";
            try {
                conn = dbc.getConn();
                stmt = conn.createStatement();
                stmt.executeUpdate(sql);
                System.out.println("대여소의 정보가 등록 되었습니다.\n");
            } catch (SQLException e) {

            }


        %>
        <div class="w3-container w3-center">
            <h2>자전거 대여소 정보를 추가했습니다.</h2>


    </body>
</html>