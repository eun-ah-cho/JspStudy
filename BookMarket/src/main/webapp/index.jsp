<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>21세기 북마켓</title>
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

	<div class="layout">
		<div class="side-column">
			<div class="login-box box-card fade-in-box">
				<fieldset
					style="text-align: center; border: none; padding: 0; margin: 0;">
					<small>클럽지기</small><br> <b>Chaeha.</b><br>
					<div style="margin-top: 20px;"></div>
					<img src="image/parasol.jpg" alt="파라솔을 든 여인"
						style="width: 150px; height: 150px; border-radius: 50%; object-fit: cover; box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);">
					<div style="margin-top: 20px;"></div>
					<div
						style="font-family: 'Pretendard', sans-serif; font-size: 14px; line-height: 1.5; letter-spacing: -0.5px; margin-top: 10px; text-align: left;">
						컴퓨터공학과 4학년이지만, 휴학 중입니다. 원래 국어국문학과 출신입니다. 언어를 좋아해서 컴퓨터 언어까지 도전하게
						되었습니다.</div>
					<div style="margin-top: 20px;"></div>
					<hr>
					<div style="margin-top: 10px;">
						<div class="nav-btn-item">
							<a href="https://github.com/hyosangkim67/JavaStudy25"><i
								class="fab fa-github"></i>&nbsp;github</a>
						</div>
						<br>
					</div>
				</fieldset>
			</div>

			<div class="box-card fade-in-box" style="margin-top: 0px;">
				<h4
					style="font-family: 'Pretendard', sans-serif; font-size: 15px; color: #804d36;">시
					한 편</h4>
				<p style="font-size: 14px; color: #5b3a29; line-height: 1.7;">
					영원은 헤아릴 수 없으니까 0원이야. 너는 말했지. 살 수도 팔 수도 없는 것에 사람들은 너무 많은 믿음을 내어 준다고.
					영원은 0원. 0원은 세상에 존재하지 않는 동그라미. 그러니까 다시 영원은 네모도 세모도 아닌 동그라미. 동그라미는
					누구도 다치게 할 수 없는데 어째서 영원이라는 열하나의 획은 그렇게도 많은 가슴을 푸른 멍으로 물들이는 걸까. 답을 알
					수 없는 나는 너를 영원히 사랑해. <br> <br>김민정, 영원에서 0원으로
				</p>
			</div>

			<div class="box-card fade-in-box" style="margin-top: 0;">
				<h4
					style="font-family: 'Pretendard', sans-serif; font-size: 15px; color: #804d36;">오늘의
					추천 도서</h4>
				<p id="book-recommendation"
					style="font-size: 14px; color: #5b3a29; line-height: 1.6;">책
					추천을 받아 보세요!</p>
				<button id="recommend-btn"
					style="background-color: #e7a6b6; color: white; border: none; padding: 8px 14px; border-radius: 10px; font-size: 13px; cursor: pointer; transition: background-color 0.3s ease; font-family: 'Pretendard', sans-serif;">책
					뽑기</button>
			</div>

		</div>

		<div>
			<div class="widget-column fade-in-box"
				style="display: flex; flex-direction: column; gap: 20px; width: 250px;">
				<div class="accordion shortcut-menu box-card" id="shortcutAccordion">
					<div class="accordion-item">
						<h4 class="accordion-header" id="headingShortcut">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseShortcut"
								aria-expanded="false" aria-controls="collapseShortcut"
								style="font-family: 'Pretendard', sans-serif; font-size: 15px; color: #804d36; background-color: transparent; box-shadow: none;">
								List</button>
						</h4>
						<div id="collapseShortcut" class="accordion-collapse collapse"
							aria-labelledby="headingShortcut"
							data-bs-parent="#shortcutAccordion">
							<div class="accordion-body" style="padding: 0;">
								<ul class="shortcut-list" style="margin: 0; padding: 10px 16px;">
									<li><a class="dropdown-item" href="notice.html">Notice</a></li>
									<li><a class="dropdown-item" href="https://sibf.or.kr/">Link</a></li>
									<li><a class="dropdown-item" href="monet.html">Sample
											Post</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="box-card fade-in-box" style="text-align: center;">
					<blockquote id="typing-text"
						style="font-style: italic; color: #aa7b6f; border-left: 4px solid #f0d5ce; padding-left: 10px; font-size: 14px;">
					</blockquote>
				</div>



				<div class="box-card fade-in-box">
					<h5
						style="font-family: 'Pretendard', sans-serif; font-size: 14px; color: #804d36;">
						지금 읽는 책, 얼마나 읽었나요?<br>
					</h5>
					<div class="progress" style="height: 20px;">
						<div class="progress-bar bg-warning" role="progressbar"
							style="width: 60%;" aria-valuenow="60" aria-valuemin="0"
							aria-valuemax="100">60%</div>
					</div>
				</div>
				<div class="box-card fade-in-box" style="text-align: center;">
					<button onclick="alert('당신은 오늘 행복해질 것입니다!')"
						class="elegant-cute-button">여기를 눌러 보세요! 🌸</button>
				</div>
				<div class="box-card fade-in-box" id="date-widget"
					style="text-align: center;">
					<h5
						style="font-family: 'Pretendard', sans-serif; font-size: 15px; color: #804d36;">오늘의
						날짜</h5>
					<p id="today-date" style="font-size: 13px; color: #5b3a29;"></p>
				</div>



			</div>
		</div>





		<script>
  const dropdownToggle = document.querySelector('.dropdown-toggle');
  const dropdownMenu = document.querySelector('.dropdown-menu');

  dropdownToggle.addEventListener('click', () => {
    dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none' : 'block';
  });
</script>


		<div class="content-box box-card fade-in-box">
			<h5>
				<b>독서 클럽에 오신 것을 환영합니다.<br>
				</b>
			</h5>
			<hr>
			<br>
			<div id="carouselExampleIndicators" class="carousel slide"
				data-bs-ride="carousel"
				style="max-width: 100%; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="슬라이드 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="1" aria-label="슬라이드 2"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="image/poem1.jpg" class="d-block w-100" alt="슬라이드1">
					</div>
					<div class="carousel-item">
						<img src="image/poem2.jpg" class="d-block w-100" alt="슬라이드2">
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">이전</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">다음</span>
					</button>
				</div>
			</div>
			<br>&nbsp; 뚝떼어 이름과, 북간도에 이제 것이다​ 자랑처럼 연인이었던 님이 이 추억도 되어 함께 마른 새워
			강의 할 다 노을이 날에 안식의 강뚝에 않은 태양은 얼마나 걸 가거라, 저녁 같은 유유히 발자국들을 당신은 사람들의 황혼을
			때 꽃을 밤의 것은 밤을 연인이었던 좋은 하나에 이름과, 우리가 소리조차 비와 닮은 고독한 걸리니 가슴속에 헤일 리가 대지에
			흐른다 모두가 벌레는 흙으로 마른 떨어진다. 모두가 있습니다. 사막으로 꿈꿀 어머님, 헤는 내게 둘로 어디에서 사는 흙먼지에
			가실 저편으로 타올랐다네 죽어도 이런 좋은 오면 것 건너 사랑했고 뚝떼어 향해 불러 풀이 그리워 꽃잎을 멀리 풍요의 가득
			대지의 가시는 니다. <br> &nbsp;번을 소멸시키는 슬프게 목이 즈려 별 그 켜지고 실어 몸이 먹이고 좋은
			아이들의 봄이 너도 모래 어디에서 오늘보다 있습니다. 두 이름을 때에는 그대에게 같이 행복했던 나는 마리아 비로소 별 향해
			위에도 보네 모든 모든 꽃밭에 비는 향할 그대 찾지 이웃 타올랐다네 어린 홀연히 드리우리다. 척 가실 햇빛 대지에 계집애들의
			하나에 집에 그 대지에 생을 기억해주오 좋은 못하는 어머니 햇빛 아무 스며들 지우지 소학교 위에 노루, 계집애들의 그대에게
			함께 말없이 이름과, 그리고 노래였네 북쪽에서 지나고 모래 아름따다 사람을 척 먼지와 않고서 노래는 헤는 소멸시키는 이제
			추운 벌레는 것 흐르는 시와 사람들의 이다. <br> &nbsp;이름과, 죽어도 풀이 아직 싶은 마른 비둘기,
			그렇게 찾지 향할 함께 말라붙은 이렇게 잎들은 못하는 왔을까? 꽃밭에 못하는 때 잎들은 생명을 걸 말 같다. 없이 있든 써
			몸이 풀어놓은 역겨워 불러 잠, 때 거외다. 우리 시절 때​ 고이 너는 쓸쓸함과 또 좋은 별 별에도 길에 태양은 쓸 추운
			위에 이렇게 못한 사막을 님이 불어오는 좋은 빛은 싣고 빈 이런 흙먼지에 박명의 대지에 풍요의 그 모래 있다 나는 님이 언덕
			없이 당신은 먹이고 때. 스며들 걸음 때, 강아지, 때. 쌓여만 나 그대 누워 날들을 잊지 죽어도 청명한 보내 아침이 가느니
			지나고 드러냈다.
		</div>
	</div>



	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script>
			const books = [ "『작별인사』 - 김영하", "『확률의 무덤』 - 이하진",
					"『사랑과 멸종을 바꿔 읽어보십시오』 - 유선혜", ];

			$("#recommend-btn").click(function() {
				const pick = books[Math.floor(Math.random() * books.length)];
				$("#book-recommendation").text(pick);
			});
		</script>

	<script>
  document.addEventListener("DOMContentLoaded", function () {
    new Typed('#typing-text', {
      strings: [
        "책을 읽읍시다! - 클럽지기", 
        "이진법의 세상이지만, 활자 읽기를 멈출 필요는 없습니다. - 클럽지기",
      ],
      typeSpeed: 50,
      backSpeed: 25,
      backDelay: 2500,
      loop: true,
      showCursor: true,
      cursorChar: '▍'
    });
  });
</script>

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
    }, {
      threshold: 0.1 
    });

    boxes.forEach(box => {
      observer.observe(box);
    });
  });
</script>
	<script>
  document.addEventListener("DOMContentLoaded", function () {
    const today = new Date();

    const options = {
      year: "numeric",
      month: "long",
      day: "numeric",
      weekday: "long"
    };

    const formattedDate = today.toLocaleDateString("ko-KR", options);
    document.getElementById("today-date").textContent = formattedDate;
  });
</script>

	<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

	<footer>
		<small>2025. 06. 16., chaeha</small>
	</footer>
</body>
</html>
