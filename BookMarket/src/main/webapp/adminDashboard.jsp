<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    String role = (String)session.getAttribute("role");
    if (!"admin".equals(role)) {
        response.sendRedirect("index.jsp");
        return;
    }

    int totalMembers = 0;
    int totalPosts = 0;
    int todayNewMembers = 0;

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://192.168.111.101:3306/bookmarketDB", "mbcbook", "1234");

        // 전체 회원 수
        String sql1 = "SELECT COUNT(*) FROM member";
        pstmt = conn.prepareStatement(sql1);
        rs = pstmt.executeQuery();
        if (rs.next()) totalMembers = rs.getInt(1);
        rs.close();
        pstmt.close();

        // 오늘 가입한 회원 수
        String sql2 = "SELECT COUNT(*) FROM member WHERE DATE(regist_day) = CURDATE()";
        pstmt = conn.prepareStatement(sql2);
        rs = pstmt.executeQuery();
        if (rs.next()) todayNewMembers = rs.getInt(1);
        rs.close();
        pstmt.close();

        // 게시글 수 예제 (공지 테이블 기준)
        String sql3 = "SELECT COUNT(*) FROM notice";
        pstmt = conn.prepareStatement(sql3);
        rs = pstmt.executeQuery();
        if (rs.next()) totalPosts = rs.getInt(1);

    } catch(Exception e){
        out.println("DB 오류: " + e.getMessage());
        e.printStackTrace();
    } finally {
        if(rs != null) try{rs.close();}catch(Exception e){}
        if(pstmt != null) try{pstmt.close();}catch(Exception e){}
        if(conn != null) try{conn.close();}catch(Exception e){}
    }
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>관리자 대시보드</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%@ include file="menu.jsp" %>

    <div class="login-container">
        <div class="login-box">
            <h2>관리자 대시보드</h2>
            <p>📊 전체 회원 수: <strong><%=totalMembers%></strong>명</p>
            <p>🗓️ 오늘 가입 회원: <strong><%=todayNewMembers%></strong>명</p>
            <p>📝 전체 공지글 수: <strong><%=totalPosts%></strong>개</p>
            <hr>
           </div>
    </div>
</body>
</html>
