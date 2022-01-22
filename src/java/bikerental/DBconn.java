package bikerental;

import java.sql.*;

public class DBconn {

    String drv = "oracle.jdbc.OracleDriver"; //oracle jdbc 드라이버 세팅
    String url = "jdbc:oracle:thin:@dalma.dongguk.ac.kr:1521:stud2"; //학교 dalma에 오라클 서버 접속하기 위한 주소 
    String user = "chopagi"; //오라클 아이디
    String password = "chopagi";//오라클 비밀번호 
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    public Connection getConn() {
        try {    //예외 처리문
            Class.forName(drv);  //오라클 드라이버를 메모리에 업로드 시키는것
        } catch (ClassNotFoundException e) {  //처리할 예외타입 선언 클래스를 찾을수 없는 경우 catch 안에 예외처리문 넣기
            e.getStackTrace(); //java.lang.throwable에서 상속받아 쓰는것
            System.err.println("ClassNotFoundExeption"); //에러 출력
        }
        try {
            conn = (Connection) DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.getSQLState();
        }
        return conn;
    }

    public ResultSet getRS(String sql) {
        try {
            Class.forName(drv);
        } catch (ClassNotFoundException e) {
            e.getStackTrace();
            System.err.println("ClassNotFoundException 드라이버 못올림");
        }
        try {
            conn = (Connection) DriverManager.getConnection(url, user, password);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
        } catch (SQLException e) {
            e.getSQLState();
        }
        return rs;

    }

}
