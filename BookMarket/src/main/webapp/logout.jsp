<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 세션을 무효화해서 로그아웃 처리
    session.invalidate();

    // 메인 페이지로 이동
    response.sendRedirect("index.jsp");
%>
