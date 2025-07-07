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
<title>회원정보 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.css" />
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
	font-family: 'Pretendard Variable', sans-serif;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	color: #5b3a29;
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

.container {
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
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

.form-box {
	width: 100%;
	max-width: 600px;
	height: 600px;
	background-color: #fffaf5;
	border-radius: 20px;
	box-shadow: 0 6px 20px rgba(160, 120, 90, 0.1);
	padding: 28px;
	box-sizing: border-box;
	overflow-y: auto;
}

fieldset {
	border: none;
	padding: 0;
	margin: 0;
}

legend {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 18px;
	color: #804d36;
}

table {
	width: 100%;
	border-spacing: 0 10px;
}

td {
	padding: 0;
	vertical-align: middle;
}

label {
	font-weight: 600;
	display: block;
	margin-bottom: 4px;
	color: #7c4a3a;
	font-size: 13px;
}

input, select, textarea {
	width: 100%;
	padding: 8px;
	font-size: 13px;
	border: 1px solid #e7cfc0;
	border-radius: 10px;
	background-color: #fffdfb;
	color: #4a2f2f;
	font-family: inherit;
	transition: border 0.2s ease, background 0.2s ease;
}

input:focus, select:focus, textarea:focus {
	border-color: #eacdc9;
	background-color: #fff9f7;
	outline: none;
}

textarea {
	resize: vertical;
	min-height: 50px;
}

input[type="button"], input[type="submit"] {
	width: auto;
	background: linear-gradient(to right, #e7a6b6, #f0c4d8);
	color: white;
	border: none;
	cursor: pointer;
	padding: 8px 14px;
	border-radius: 12px;
	font-size: 12px;
	transition: background-color 0.3s ease;
}

input[type="button"]:hover, input[type="submit"]:hover {
	background: linear-gradient(to right, #d986a5, #e7a6b6);
}

.input-row {
	display: flex;
	gap: 8px;
	flex-wrap: wrap;
	align-items: center;
}

footer {
	text-align: center;
	font-size: 14px;
	color: #aa8a78;
	font-family: 'Pretendard', sans-serif;
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

@media ( max-width : 768px) {
	.form-box {
		max-width: 95%;
		height: auto;
	}
	.input-row {
		flex-direction: column;
	}
}

</style>
</head>
<body>
  <%@ include file="menu.jsp" %>
	<div class="container">
		<div class="form-box fade-in-box">
			<form action="processUpdateMember.jsp" method="post">
				<fieldset>
					<legend>회원정보 수정</legend>
					<table>
						<tr>
							<td><label for="id">아이디</label></td>
							<td><input id="id" name="id" type="text" value="<%=sessionId%>" readonly></td>
						</tr>
						<tr>
							<td><label for="password">새 비밀번호</label></td>
							<td><input id="password" name="password" type="password" placeholder="변경할 비밀번호 입력"></td>
						</tr>
						<tr>
							<td><label for="email">이메일</label></td>
							<td><input type="email" id="email" name="email" placeholder="이메일 주소를 수정해주세요!"></td>
						</tr>
						<tr>
							<td><label for="phone">전화번호</label></td>
							<td>
								<div class="input-row">
									<select name="country_code" style="width: 100px;">
										<option>+82</option>
									</select>
									<input type="text" id="phone" name="phone" placeholder="전화번호 입력">
								</div>
							</td>
						</tr>
						<tr>
							<td><label for="address">주소</label></td>
							<td><input type="text" id="address" name="address" placeholder="주소를 입력해주세요!"></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: right; padding-top: 20px;">
								<input type="submit" value="정보 수정하기">
								<input type="button" value="메인 페이지로 돌아가기" onclick="location.href='index.jsp'">
							</td>
						</tr>
					</table>
				</fieldset>
			</form>
		</div>
	</div>

	<script>
    document.addEventListener("DOMContentLoaded", () => {
      const boxes = document.querySelectorAll(".fade-in-box");
      const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add("visible");
            observer.unobserve(entry.target);
          }
        });
      }, { threshold: 0.1 });
      boxes.forEach(box => { observer.observe(box); });
    });
	</script>

	<footer>
		<small>2025. 06. 16., chaeha</small>
	</footer>
</body>
</html>
