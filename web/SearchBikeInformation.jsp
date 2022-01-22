    <%-- 
    Document   : SearchBikeInformation
    Created on : 2018. 4. 16, 오후 9:19:45
    Author     : temp
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>자전거 대여소 정보 검색 결과</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>검색하신 자전거 대여소 정보입니다.</h1>
        </div>
        <TABLE class="w3-table table w3-striped w3-bordered" BORDER='0' width='600' cellpadding='0' cellspacing='0'>
            <TR>
                <TD>ID</TD>
                <TD>대여소이름</TD>
                <TD>도로명 주소</TD>
                <TD>지번주소</TD>
                <TD>위도</TD>
                <TD>경도</TD>
                <TD>시작시간</TD>
                <TD>종료시간</TD>
                <TD>자전거개수</TD>
            </TR>

            <%
                request.setCharacterEncoding("EUC-KR");
                RentalPlaceDao RentBikeDao = new RentalPlaceDao();                       // RentalPlaceDao클래스에 RentalBikeDao라는 변수 지정
                String RoadAddress = request.getParameter("Address");                    // 문자열 RoadAddress에 Address라는 파라메타값을 요청
                System.out.println("내가 입력한 지역 = "+RoadAddress);                                         //RoadAddress값을 출력
                List listbike = RentBikeDao.listSearchBike(RoadAddress);                 // RentBikeDao내용을 이용해 listBike 리스트를 나열한다.
                Iterator b = listbike.iterator();                                        //Iterator라는 함수를 사용히여 데이터 내용을 읽어온다. 

                while (b.hasNext()) {                                                    //while문에 리스트에 있는 데이터를 읽는다는 조건을 사용
                    RentalPlaceBean RPbean = (RentalPlaceBean) b.next();
                    String ID = RPbean.getID();                                          //데이터 내용인 ID를 RPbean필드값을 get으로 읽는다.
                    String BIKERENTALNAME = RPbean.getBikerentalname();                  //데이터 내용인 BIKERENTALNAME를 RPbean필드값을 get으로 읽는다.
                    String ROADADDRESS = RPbean.getRoadAddress();                        //데이터 내용인 ROADADDRESS를 RPbean필드값을 get으로 읽는다.
                    String NUMBERADDRESS = RPbean.getNumberAddress();                    //데이터 내용인 NUMBERADDRESS를 RPbean필드값을 get으로 읽는다.
                    float LATITUDE = RPbean.getLatitude();                               //데이터 내용인 LATITUDE를 RPbean필드값을 get으로 읽는다.
                    float HARDNESS = RPbean.getHardness();                               //데이터 내용인 HARDNESS 를 RPbean필드값을 get으로 읽는다.
                    String STARTTIME = RPbean.getStartTime();                            //데이터 내용인 STARTTIME를 RPbean필드값을 get으로 읽는다.
                    String FINISHTIME = RPbean.getFinishTime();                          //데이터 내용인 FINISHTIME를 RPbean필드값을 get으로 읽는다.
                    String BIKECOUNT = RPbean.getBikeCount();                            //데이터 내용인 BIKECOUNT를 RPbean필드값을 get으로 읽는다.


            %>


            <TR>
                <TD><%=ID%></TD>                                                        
                <TD><%=BIKERENTALNAME%></TD>
                <TD><%=ROADADDRESS%></TD>
                <TD><%=NUMBERADDRESS%></TD>
                <TD><%=LATITUDE%></TD>
                <TD><%=HARDNESS%></TD>
                <TD><%=STARTTIME%></TD>
                <TD><%=FINISHTIME%></TD>
                <TD><%=BIKECOUNT%></TD>
            </TR>
            <%
                }
            %>
        </TABLE>

    </body>
</html>
