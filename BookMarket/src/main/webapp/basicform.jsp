<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>BookMarket</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<a
		href="https://www.cursors-4u.com/cursor/2010/04/20/cute-spinning-flower-purple.html"
		target="_blank" title="Cute Spinning Flower Purple"> <img
		src="https://cur.cursors-4u.net/cursor.png" border="0"
		alt="Cute Spinning Flower Purple"
		style="position: absolute; top: 0px; right: 0px;" />
	</a>
	<br>
	<%@ include file="menu.jsp"%>

	<div class="container-fixed py-4">
		<!-- 상단 타이틀 박스 -->
		<div class="custom-header-box">
			<h1 class="custom-header-title">와우</h1>
			<p class="custom-header-sub">어쩌구 저쩌구 설명</p>
		</div>

		<!-- 본문 -->
		<div class="row align-items-md-stretch text-center">
			<div class="col-md-12">
				<div class="h-100 p-5">
					<p style="font-family: 'Pretendard', sans-serif;">여기에 내용이
						들어갑니다.</p>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<small>2025. 06. 16., chaeha</small>
	</footer>
</body>
</html>
