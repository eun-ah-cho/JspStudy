<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	// DB 접속 정보
	String url = "jdbc:mysql://192.168.111.101:3306/bookmarketDB";
	String user = "mbcbook";
	String dbpassword = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, dbpassword);

    // 비밀번호는 사용자가 입력했을 때만 수정
    StringBuilder sql = new StringBuilder("UPDATE member SET ");  //StringBuilder : 문자열을 효율적으로 연결하거나 수정할수있는 자바클래스이자 자료형.
    boolean needComma = false;

    if (password != null && !password.trim().isEmpty()) {
        sql.append("password=?");
        needComma = true;
    }
    if (email != null && !email.trim().isEmpty()) {
        if (needComma) sql.append(", ");
        sql.append("mail=?");
        needComma = true;
    }
    if (phone != null && !phone.trim().isEmpty()) {
        if (needComma) sql.append(", ");
        sql.append("phone=?");
        needComma = true;
    }
    if (address != null && !address.trim().isEmpty()) {
        if (needComma) sql.append(", ");
        sql.append("address=?");
    }

    sql.append(" WHERE id=?");

    pstmt = conn.prepareStatement(sql.toString());

    int index = 1;
    if (password != null && !password.trim().isEmpty()) pstmt.setString(index++, password);
    if (email != null && !email.trim().isEmpty()) pstmt.setString(index++, email);
    if (phone != null && !phone.trim().isEmpty()) pstmt.setString(index++, phone);
    if (address != null && !address.trim().isEmpty()) pstmt.setString(index++, address);

    pstmt.setString(index, id);

    int result = pstmt.executeUpdate();

    if (result > 0) {
%>
        <script>
            alert("회원정보가 성공적으로 수정되었습니다!");
            location.href="index.jsp";
        </script>
<%
    } else {
%>
        <script>
            alert("회원정보 수정에 실패했습니다. 다시 시도해주세요.");
            history.back();
        </script>
<%
    }
} catch (Exception e) {
    out.println("DB 오류: " + e.getMessage());
    e.printStackTrace();
} finally {
    if (pstmt != null) try { pstmt.close(); } catch(Exception e) {}
    if (conn != null) try { conn.close(); } catch(Exception e) {}
}
%>
