<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 코어태그 c 사용 가능하도록 선언 -->

<link rel="stylesheet" href="css/style.css"> 
<div class="nav-bar">
<div class="nav-title">Book Market.</div>
<div class="nav-btn">
<div class="nav-btn-item"><a href="index.jsp">홈</a></div>
  

  <c:choose>
	 <c:when test="${empty sessionScope.sessionId}">
          <div class="nav-btn-item"><a href="login.jsp">로그인</a></div>
          <div class="nav-btn-item"><a href="join.jsp">회원가입</a></div>
                <!--로그인 여부에 따라 메뉴 다르게 표시하기 위한 조건문  empty sessionScope.sessionId : 세션에 sessionId가 없으면 = 로그인 안한상태  -->
            </c:when>
        
        
   
  	   <c:otherwise>              
  	        <!-- 로그인 한 상태이면 아래 메뉴 출력  -->  
           <div class="nav-btn-item">  ${sessionScope.sessionId}님 환영합니다! </div>
           <div class="nav-btn-item"><a href="#">도서 목록</a></div>
     	   <div class="nav-btn-item"><a href="#">회원 게시판</a></div>
           <div class="nav-btn-item"><a href="updateMember.jsp">회원정보수정</a></div>
           <div class="nav-btn-item"><a href="deleteMember.jsp">회원탈퇴</a></div>
                
                
               
                <c:if test="${sessionScope.role eq 'admin'}">
                 <!--  입력한 아이디가 세션의 속성인 role 에서  admin이 일치하면 관리자모드 메뉴. -->
                	<div class="nav-btn-item"><a href="adminDashboard.jsp">관리자모드</a></div>
                </c:if>
                
                <div class="nav-btn-item"> <a href="logout.jsp">로그아웃</a></div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
