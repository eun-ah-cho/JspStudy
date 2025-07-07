<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("password");

// DB 접속 정보
String url = "jdbc:mysql://192.168.111.101:3306/bookmarketDB";
String user = "mbcbook";
String password = "1234";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, password);

    String sql = "SELECT id FROM member WHERE id=? AND password=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, pw);

    rs = pstmt.executeQuery();

    if (rs.next()) {
        // 로그인 성공 하면 세션에 sessionId라는 이름으로 로그인한 사용자 id저장
        session.setAttribute("sessionId", id);
       if("admin".equals(id)){
    	   // 로그인 아이디가 admin이면 role 속성으로  admin 저장 
    	session.setAttribute("role", "admin");
        } else {
    	   session.setAttribute("role", "user");
       }
%>
<script>
	alert("로그인 성공!");
	location.href="index.jsp";
	</script>
<%
    } else{

%>    
<script>
	alert("아이디 또는 비밀전호가 올바르지 않습니다.");
	history.back();
	</script>
<%
    }
   } catch (Exception e) {
       e.printStackTrace();
       out.println("DB 오류: " + e.getMessage());
   } finally {
       if (rs != null) try { rs.close(); } catch(Exception e) {}
       if (pstmt != null) try { pstmt.close(); } catch(Exception e) {}
       if (conn != null) try { conn.close(); } catch(Exception e) {}
   }
%>

    
    <!-- response.sendRedirect("login.jsp?error=1"); // 로그인 실패 → 에러 파라미터와 함께 로그인 페이지로 이동 -->

