
<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>자전거 대여소 정보 삭제</title>
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

    
            String sql = "delete from 대여소 where ID = '" + ID + "' and BIKERENTALNAME = '" + Bikerentalname + "'"
                    + " and ROADADDRESS = '" + Roadaddress + "' and NUMBERADDRESS = '" + Numberaddress + "'"
                    + " and LATITUDE = '" + Latitude + "' and HARDNESS= '" + Hardness + "'"
                    + "and STARTTIME = '" + Starttime + "'and FINISHTIME = '" + Finishtime + "'"
                    + " and BIKECOUNT = '" + Bikecount + "'";

            try {
                conn = dbc.getConn();
                stmt = conn.createStatement();
                stmt.executeUpdate(sql);
                System.out.println("고객님의 정보가 삭제되었습니다.\n");
            } catch (SQLException e) {

            }
        %>
         <div class="w3-container w3-center">
            <h2>자전거 대여소 정보를 삭제 했습니다.</h2>
    </body>
</html>
