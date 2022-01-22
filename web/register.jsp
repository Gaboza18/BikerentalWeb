
<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>고객정보등록</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <%
            Connection conn = null;
            Statement stmt = null;
            DBconn dbc = new DBconn();
            String CustomerName = request.getParameter("Name");
            String CustomerNumber = request.getParameter("Number");
            String CustomerAge = request.getParameter("Age");

            String sql = "insert into 고객(CUSTOMER,SOCIALSECURITYNUMBER,AGE) values('" + CustomerName + "','" + CustomerNumber + "','" + CustomerAge + "')";
            try {
                conn = dbc.getConn();
                stmt = conn.createStatement();
                stmt.executeUpdate(sql);
                System.out.println("고객님의 정보가 등록되었습니다.\n");
            } catch (SQLException e) {

            }


        %>
        <div class="w3-container w3-center">
            <h2>고객님의 정보를 등록했습니다.</h2>
            
          
    </body>
</html>
