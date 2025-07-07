<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	// join.jsp에서 넘겨받은 폼 데이터 꺼내기 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String repw = request.getParameter("repw");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String fav_quote = request.getParameter("fav_quote");
	String category = request.getParameter("category");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	// 입력한 비밀번호와 비밀번호 확인이 일치 하는지 검사
	if (!pw.equals(repw)) {
%>
	    <script>
	        alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
	        history.back();
	    </script>
<%
	    return;
	}
	
	// DB 접속 정보
	String url = "jdbc:mysql://192.168.111.101:3306/bookmarketDB";
	String user = "mbcbook";
	String dbpw = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
	    Class.forName("com.mysql.jdbc.Driver"); //JDBC 드라이버 클래스 메모리 로드 
	    conn = DriverManager.getConnection(url, user, dbpw); //conn 통한 DB접속 
	
	    //join폼에서 받은 값을 sql에 삽입 
	    String sql = "INSERT INTO member (id, password, name, mail, phone) VALUES (?, ?, ?, ?, ?)";  
	    pstmt = conn.prepareStatement(sql); //JDBC에서 SQL문을 실행할때 사용하는 객체 
	    pstmt.setString(1, id); //? 자리 에 값채우기 
	    pstmt.setString(2, pw);
	    pstmt.setString(3, name);
	    pstmt.setString(4, email);
	    pstmt.setString(5, phone);
	
	    int result = pstmt.executeUpdate(); //쿼리 실행후 영향받은 행 수를 반환  =insert 된 행의개수 
	
	    if (result > 0) { //회원가입(db인설트가) 이 1개 이상 성공 되면 
	%>
	        <script>
	            alert("회원가입이 완료되었습니다!");
	            location.href="login.jsp";
	        </script>
	<%
	    } else {
	%>
	        <script>
	            alert("회원가입에 실패했습니다. 다시 시도해주세요.");
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
