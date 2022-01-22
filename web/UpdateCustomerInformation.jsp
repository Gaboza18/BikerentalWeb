

<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>고객이름수정</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <%
            Connection conn = null;
            Statement stmt = null;
            DBconn dbc = new DBconn();
            String Name = request.getParameter("Name");
            String UpdateName = request.getParameter("UpdateName");

            String sql = "update 고객 set customer='" + UpdateName + "' where CUSTOMER ='" + Name + "'";

            try {
                conn = dbc.getConn();
                stmt = conn.createStatement();
                stmt.executeUpdate(sql);
                System.out.println("고객님의 이름이 수정되었습니다.\n");
            } catch (SQLException e) {

            }
        %>
           <div class="w3-container w3-center">
            <h2>고객님의 이름을 수정했습니다.</h2>
    </body>
</html>
