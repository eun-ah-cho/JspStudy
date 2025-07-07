<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// DB 접속 정보
	String url = "jdbc:mysql://192.168.111.101:3306/bookmarketDB";
	String user = "mbcbook";
	String dbpassword = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, dbpassword);

    // 탈퇴 전 비밀번호 일치 여부 확인
    String checkSql = "SELECT id FROM member WHERE id=? AND password=?";
    pstmt = conn.prepareStatement(checkSql);
    pstmt.setString(1, id);
    pstmt.setString(2, password);

    rs = pstmt.executeQuery();

    if (rs.next()) {
        // 비밀번호 일치하면 회원 탈퇴(DELETE)
        pstmt.close();
        String deleteSql = "DELETE FROM member WHERE id=?";
        pstmt = conn.prepareStatement(deleteSql);
        pstmt.setString(1, id);

        int result = pstmt.executeUpdate();
        if (result > 0) { //delete 처리가 1개 이상이면 
            session.invalidate(); // 세션 종료
%>
            <script>
                alert("회원 탈퇴가 완료되었습니다. 그동안 이용해주셔서 감사합니다.");
                location.href="index.jsp";
            </script>
<%
        } else {
%>
            <script>
                alert("회원 탈퇴에 실패했습니다. 다시 시도해주세요.");
                history.back();
            </script>
<%
        }
    } else {
%>
        <script>
            alert("비밀번호가 올바르지 않습니다.");
            history.back();
        </script>
<%
    }
} catch (Exception e) {
    out.println("DB 오류: " + e.getMessage());
    e.printStackTrace();
} finally {
    if (rs != null) try { rs.close(); } catch(Exception e) {}
    if (pstmt != null) try { pstmt.close(); } catch(Exception e) {}
    if (conn != null) try { conn.close(); } catch(Exception e) {}
}
%>
