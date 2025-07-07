<%@ page import="java.sql.*" %>

<!--데이터 베이스 연결하는 테스트 코드  -->
<%
Connection conn = null;

try {
    String url = "jdbc:mysql://192.168.111.101:3306/bookmarketDB";
    String user = "mbcbook";
    String password = "1234";

    Class.forName("com.mysql.jdbc.Driver"); // JDBC 드라이버 로드
    System.out.println("✅ 드라이버 로드 성공✅");
    conn = DriverManager.getConnection(url, user, password);
    System.out.println("✅ DB 연결 성공✅");
} catch (ClassNotFoundException e) {
    out.println("JDBC 드라이버를 찾지 못했습니다. 드라이버를 확인하세요.!!");
    e.printStackTrace();
} catch (SQLException e) {
    out.println("데이터베이스 연결이 실패했습니다. 오류: " + e.getMessage());
    e.printStackTrace();
} finally {
    if (conn != null) {
        try {
            conn.close(); 
            System.out.println("✅ DB 연결 종료✅"); // DB 리소스 누수 발생 방지를 위한 닫아주기
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
%>
