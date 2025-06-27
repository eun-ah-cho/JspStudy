<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="./resources/js/validation.js"></script> <!--입력폼 검증코드 연결--> 

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
	crossorigin="anonymous"></script>

<title>도서 등록 페이지</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>'/><!--웹브라우저의 지역값언어   -->
<fmt:bundle basename="bundle.message"> <!--기본값은 한국어로 표시 -->

	<div class="container py-4">

		<%@ include file="menu.jsp"%>
		<!-- 메뉴바를 외부파일로 연결 -->


		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-1">
				<h1 class="display-5 fw-bold"><fmt:message key="title"/></h1>
				<p class="col-md-8 fs-4">Book Addition</p>
			</div>
		</div>
		<!-- 중간타이틀 : 상단 box -->

		<div class="row align-items-md-stretch">
		<div class ="text-end">
		<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
		 </div><!--언어변환 버튼 -->
			<form name="newBook" action="./processAddBook.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<!--파일업로드용 타입필수 page 237-->
			
					<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="bookId"/></label>
					<div class="col-sm-3">
						<input type="text" id="bookId" name="bookId" class="form-control">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="name"/></label>
					<div class="col-sm-3">
						<input type="text"  id="name"  name="name" class="form-control">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
					<div class="col-sm-3">
						<input type="text" id="unitPrice" name="unitPrice" class="form-control">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="author"/></label>
					<div class="col-sm-3">
						<input type="text" id="author" name="author" class="form-control">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="publisher"/></label>
					<div class="col-sm-3">
						<input type="text" id="publisher" name="publisher" class="form-control">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="releaseDate"/></label>
					<div class="col-sm-3">
						<input type="text" id="releaseDate" name="releaseDate" class="form-control">
					</div>
				</div>

				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="description"/></label>
					<div class="col-sm-5">
						<textarea  id="description" name="description" cols="50" rows="2"
							class="form-control" placeholder="100자 이상 적어주세요"></textarea>
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="category"/></label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
					<div class="col-sm-3">
						<input type="text" name="unitsInStock" class="form-control">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="condition"/></label>
					<div class="col-sm-5">
						<input type="radio" name="condition" value="New "> <fmt:message key="condition_New"/> 
						<input type="radio" name="condition" value="Old"> <fmt:message key="condition_Old"/> 
						<input type="radio" name="condition" value="EBook"> <fmt:message key="condition_Ebook"/>
					</div></div>
				<div class="mb-3 row"><!-- 교재 이미지 처리용 폼 추가 p265-->
				<label class="col-sm-2"><fmt:message key="bookImage"/> </label>
				<div class="col-sm-5"> 
				<input type="file" name="BookImage" class="form-control"></div>
				</div>
							
				<div class="mb-3 row">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="submit" class="btn btn-primary" value=<fmt:message key="button"/> onclick="CheckAddBook()">
						<!--onclick메서드는 버튼을 클릭했을때 핸들링 하기 위한 방법 js로 감  -->
						
					</div>
				</div>

			</form> <!--  -->
		</div>
		<!-- 본문영역 : 중간 box -->

		<%@ include file="footer.jsp"%>

	</div>
</fmt:bundle>
</body>
</html>