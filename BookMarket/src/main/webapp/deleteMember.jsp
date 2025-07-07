<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String sessionId = (String)session.getAttribute("sessionId");
    if (sessionId == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="css/style.css">
<style>
* {
	cursor: url(https://cur.cursors-4u.net/nature/nat-9/nat850.ani),
		url(https://cur.cursors-4u.net/nature/nat-9/nat850.png), auto
		!important;
	box-sizing: border-box;
}

html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

body {
	background: linear-gradient(to bottom, #fff2f2, #fffaf5);
	font-family: 'Pretendard', sans-serif;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.fade-in-box {
	opacity: 0;
	transform: translateY(30px);
	transition: opacity 0.6s ease-out, transform 0.6s ease-out;
}

.fade-in-box.visible {
	opacity: 1;
	transform: translateY(0);
}

.tooltip {
	position: relative;
	display: inline-block;
	cursor: help;
	color: #c17086;
	text-decoration: none;
	font-weight: 500;
}

.tooltip:hover .tooltip-text {
	visibility: visible;
	opacity: 1;
	transform: translateY(-5px);
}

.tooltip-text {
	visibility: hidden;
	width: 180px;
	background-color: #fbeef3;
	color: #804d36;
	text-align: center;
	border-radius: 10px;
	padding: 8px 10px;
	position: absolute;
	z-index: 1;
	bottom: 125%;
	left: 50%;
	transform: translateX(-50%) translateY(0);
	opacity: 0;
	transition: all 0.3s ease;
	font-size: 13px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	white-space: nowrap;
}

.wrapper {
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px;
}

.login-box {
	flex: 1;
	min-width: 260px;
	max-width: 320px;
	font-size: 14px;
	background: rgba(255, 245, 235, 0.85);
	backdrop-filter: blur(12px);
	border-radius: 20px;
	padding: 30px;
	box-shadow: 0 8px 24px rgba(160, 120, 90, 0.2);
	transition: all 0.3s ease;
}

.login-box fieldset {
	border: none;
	padding: 0;
	margin: 0;
}

.login-box legend {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 20px;
	color: #804d36;
	text-align: center;
}

.login-box input[type="text"], .login-box input[type="password"],
	.login-box input[type="submit"] {
	width: 100%;
	padding: 10px 12px;
	font-size: 13px;
	border: 1px solid #e7cfc0;
	border-radius: 12px;
	margin-bottom: 16px;
	background-color: #fffdfb;
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05);
}

.login-box input[type="text"]:focus, .login-box input[type="password"]:focus
	{
	outline: none;
	border-color: #eacdc9;
	background-color: #fff9f7;
}

.login-box input[type="submit"] {
	background: linear-gradient(to right, #e7a6b6, #f0c4d8);
	border: none;
	border-radius: 14px;
	color: white;
	font-weight: bold;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.login-box input[type="submit"]:hover {
	background: linear-gradient(to right, #d986a5, #e7a6b6);
}

.login-box a {
	text-decoration: none;
	color: #c17086;
	font-weight: 500;
}

.login-box a:hover {
	text-decoration: underline;
}

footer {
	text-align: center;
	font-size: 14px;
	font-family: 'Pretendard', sans-serif;
	color: #aa8a78;
	padding: 20px 0;
}

::-webkit-scrollbar {
	width: 10px;
	height: 10px;
}

::-webkit-scrollbar-track {
	background: #fff8f5;
	border-radius: 10px;
}

::-webkit-scrollbar-thumb {
	background: linear-gradient(to bottom, #e7a6b6, #f0c4d8);
	border-radius: 10px;
	border: 2px solid #fff8f5;
}

::-webkit-scrollbar-thumb:hover {
	background: linear-gradient(to bottom, #d986a5, #e7a6b6);
}
.login-box input[type="button"] {
	background: linear-gradient(to right, #e7a6b6, #f0c4d8);
	border: none;
	border-radius: 14px;
	color: white;
	font-weight: bold;
	cursor: pointer;
	transition: background-color 0.3s ease;
	width: 100%;
	padding: 10px 12px;
	font-size: 13px;
	border: 1px solid #e7cfc0;
	margin-bottom: 16px;
	background-color: #fffdfb;
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05);
}

.login-box input[type="button"]:hover {
	background: linear-gradient(to right, #d986a5, #e7a6b6);
}
</style>
</head>
<body>
	<%@ include file="menu.jsp" %>

	<div class="login-container">
		<div class="login-box">
			<h2>회원탈퇴</h2>
			<p style="color: #804d36;">정말로 회원을 탈퇴하시겠습니까?</p>
			<form method="post" action="processDeleteMember.jsp">
				<input type="hidden" name="id" value="<%=sessionId%>">
				<label for="password">비밀번호 확인</label>
				<input type="password" id="password" name="password" required placeholder="비밀번호 입력">
				<div class="btn-box">
					<input type="submit" value="탈퇴하기">
					<input type="button" value="취소" onclick="location.href='index.jsp'">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
