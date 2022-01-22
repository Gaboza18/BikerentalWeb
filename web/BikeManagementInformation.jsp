<%-- 
    Document   : BikeManagementInformation
    Created on : 2018. 5. 1, 오전 2:29:26
    Author     : temp
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>자전거 관리소 정보 검색 결과</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>검색하신 자전거 관리소 정보입니다.</h1>
        </div>
        <TABLE class="w3-table table w3-striped w3-bordered" BORDER='0' width='600' cellpadding='0' cellspacing='0'>
            <TR>
                <TD>ID</TD>
                <TD>자전거대여소명</TD>
                <TD>관리기관명</TD>
                <TD>공기주입기유형</TD>
                <TD>공기주입기비치여부</TD>
                <TD>수리대설치여부</TD>
                <TD>거치대수</TD>

            </TR>

            <%
                BikeManagementDao BMDao = new BikeManagementDao();                       //BikeManagementDao클래스에 BMDao라는 변수 지정
                String Bikerentalname = request.getParameter("Address");                 // 문자열 Bikerentalname에 Address라는 파라메타값을 요청
                System.out.println(Bikerentalname);                                      //Bikerentalname값을 출력
                List listbike = BMDao.BikeManage(Bikerentalname);                        // Bikerentalname내용을 이용해 listBike 리스트를 나열한다.
                Iterator b = listbike.iterator();                                        //Iterator라는 함수를 사용히여 데이터 내용을 읽어온다. 

                while (b.hasNext()) {                                                    //while문에 리스트에 있는 데이터를 읽는다는 조건을 사용
                    BikeManagementBean BMbean = (BikeManagementBean) b.next();
                    String ID = BMbean.getID();                                          //데이터 내용인 ID를 BMbean필드값을 get으로 읽는다.
                    String BIKERENTALNAME = BMbean.getBikerentalname();                  //데이터 내용인 BIKERENTALNAME를 BMbean필드값을 get으로 읽는다.
                    String MANAGEMENTAGENCY = BMbean.getMANAGEMENTAGENCY();              //데이터 내용인 MANAGEMENTAGENCY를 BMbean필드값을 get으로 읽는다.
                    String AIRINJECTORTYPE = BMbean.getAIRINJECTORTYPE();                //데이터 내용인 AIRINJECTORTYPE를 BMbean필드값을 get으로 읽는다.                                          
                    String AIRINJECTOR = BMbean.getAIRINJECTOR();                        //데이터 내용인 AIRINJECTOR를 BMbean필드값을 get으로 읽는다.
                    String HOLDER = BMbean.getHOLDER();                                  //데이터 내용인 HOLDER를 BMbean필드값을 get으로 읽는다.
                    String REPAIRSTAND = BMbean.getREPAIRSTAND();                        //데이터 내용인 REPAIRSTAND를 BMbean필드값을 get으로 읽는다.


            %>


            <TR>
                <TD><%=ID%></TD>                                                        
                <TD><%=BIKERENTALNAME%></TD>
                <TD><%=MANAGEMENTAGENCY%></TD>
                <TD><%=AIRINJECTORTYPE%></TD>
                <TD><%=AIRINJECTOR%></TD> 
                <TD><%=HOLDER%></TD> 
                <TD><%=REPAIRSTAND%></TD>  
            </TR>
            <%
                }
            %>
        </TABLE>

    </body>
</html>
