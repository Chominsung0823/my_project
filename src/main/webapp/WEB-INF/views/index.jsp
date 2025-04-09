<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>개인 프로젝트</title>
		<!-- head.jsp import -->
		<c:import url = "/WEB-INF/views/layout/head.jsp"></c:import>
	</head>
	<body>
		<div id="wrap">
			<!-- top.jsp import -->
			<c:import url = "/WEB-INF/views/layout/top.jsp"></c:import>
			
			<!-- 메인 컨텐츠 -->
			<div class="container">
				<!-- 슬라이드 쇼 & 베스트셀러 -->
				<div id="mainContent">
					<!-- 슬라이드 쇼 -->
					<section id="slideShow">
						<div class="buttonBox">
							<img alt="이전버튼" id="prevBtn" src="<c:url value='/images/prevBtn.png' />" >
						</div>
						
						<div id="slideShowBox">
							<div id="slidePannel">
								<a href="#"><img alt="슬라이드" class="slideImg" src="<c:url value='/images/slideImg_1.jpg' />"></a>
								<a href="#"><img alt="슬라이드" class="slideImg" src="<c:url value='/images/slideImg_2.jpg' />"></a>
								<a href="#"><img alt="슬라이드" class="slideImg" src="<c:url value='/images/slideImg_3.jpg' />"></a>
								<a href="#"><img alt="슬라이드" class="slideImg" src="<c:url value='/images/slideImg_4.jpg' />"></a>
								<a href="#"><img alt="슬라이드" class="slideImg" src="<c:url value='/images/slideImg_3.jpg' />"></a>
							</div>
						</div>
						
						<div class="buttonBox">
							<img id="nextBtn" alt="다음버튼" src="<c:url value='/images/nextBtn.png' />" >
						</div>
						
						<div id="btnWrap">
							<span id="toggleBtn" class="stop play">정지</span>
							<div id="swiper-page">
								<span id="swiper-page-current">1</span>
								/
								<span id="swiper-page-total">5</span>
							</div>
						</div>
					</section><!-- 슬라이드 쇼 끝 -->
					
					<!-- 베스트 셀러 -->
					<section id="weeklyBestSeller">
						<div class="weeklyBestSeller-title">
							<h3>주간 베스트 셀러</h3>
						</div>
						
						<div id="bestSeller-list">
							<ul>
								<li class="bestSeller-item">
									<p class="rank">1위</p>
									<img alt="책" src="<c:url value ='/images/book1.jpg' />" >
									<div class="bookInfo">
										<p class="bookTitle">책 제목</p>
										<p class="bookAuthor">저자명</p>
									</div>
								</li>
								<li class="bestSeller-item">
									<p class="rank">2위</p>
									<img alt="책" src="<c:url value ='/images/book2.jpg' />" >
									<div class="bookInfo">
										<p class="bookTitle">책 제목</p>
										<p class="bookAuthor">저자명</p>
									</div>
								</li>
								<li class="bestSeller-item">
									<p class="rank">3위</p>
									<img alt="책" src="<c:url value ='/images/book3.jpg' />" >
									<div class="bookInfo">
										<p class="bookTitle">책 제목</p>
										<p class="bookAuthor">저자명</p>
									</div>
								</li>
								<li class="bestSeller-item">
									<p class="rank">4위</p>
									<img alt="책" src="<c:url value ='/images/book4.jpg' />" >
									<div class="bookInfo">
										<p class="bookTitle">책 제목</p>
										<p class="bookAuthor">저자명</p>
									</div>
								</li>
								<li class="bestSeller-item">
									<p class="rank">5위</p>
									<img alt="책" src="<c:url value ='/images/book5.jpg' />" >
									<div class="bookInfo">
										<p class="bookTitle">책 제목</p>
										<p class="bookAuthor">저자명</p>
									</div>
								</li>
								<li class="bestSeller-item">
									<p class="rank">6위</p>
									<img alt="책" src="<c:url value ='/images/book6.jpg' />" >
									<div class="bookInfo">
										<p class="bookTitle">책 제목</p>
										<p class="bookAuthor">저자명</p>
									</div>
								</li>
							</ul>
						</div>
					</section>
				</div>
				
				<!-- 공지사항 & 십진분류별 도서 추천 -->
				<section id="info">
					<!-- 공지사항 -->
					<article id="notice">
						<div class="label"><a href="<c:url value='#' />">공지사항</a></div>
						<div class="list" id="notice-list">
							<ul>
								<li>
									<a href="<c:url value='#' />">
										[안내]사이트 이용 안내 및 자주 묻는 질문 모음(02.20~03.20)
										<span class="date">2025.02.20</span> 
									</a>
								</li>
								<li>
									<a href="<c:url value='#' />">
										[개선안내]사이트 이용 안내 및 자주 묻는 질문 모음2@@@@@@@
										<span class="date">2025.02.20</span> 
									</a>
								</li>
								<li>
									<a href="<c:url value='#' />">
										[이용안내]사이트 이용 안내 및 자주 묻는 질문 모음3
										<span class="date">2025.02.20</span> 
									</a>
								</li>
								<li>
									<a href="<c:url value='#' />">
										[뉴스]사이트 이용 안내 및 자주 묻는 질문 모음4
										<span class="date">2025.02.20</span> 
									</a>
								</li>
							</ul>
						</div>
					</article>
					
					<!-- 십진분류 도서 추천 -->
					<article id="bookRecomd">
						<div class="label"><a href="<c:url value='#' />">십진분류별 추천 도서</a></div>
						<div class="list" id="bookList">
							<ul>
								<li class="listItem"><a href="#">000 총류: book1</a></li>
								<li class="listItem"><a href="#">100 철학: book2</a></li>
								<li class="listItem"><a href="#">200 종교: book3</a></li>
								<li class="listItem"><a href="#">300 사회과학: book4</a></li>
								<li class="listItem"><a href="#">400 자연과학: book5</a></li>
								<li class="listItem"><a href="#">500 기술과학: book6</a></li>
								<li class="listItem"><a href="#">600 예술: book7</a></li>
								<li class="listItem"><a href="#">700 언어: book8</a></li>
								<li class="listItem"><a href="#">800 문학: book9</a></li>
								<li class="listItem"><a href="#">900 역사: book10</a></li>
							</ul>
						</div>
					</article>
				</section>
				
				<!-- 독서 그래프 & 독서 현황 -->
				<section id="readingStat">
					<div id="readingStat-title">독서 통계</div>
					<div id="readingStat-content">
						<!-- 독서 그래프 -->
						<article id="readingGraph">
							<div class="label">나의 한 달 독서 그래프</div>
							<div class="graph-container">
								<canvas id="readingChart"></canvas>
							</div>
						</article>
						
						<!-- 독서 현황 -->
						<article id="readingPrgs">
							<div class="label">나의 독서 현황</div>
							
							<div class="progress">
								<p class="book-title">반지의 제왕</p>
								<p> 총 <span id="totalPages">672</span> 페이지 중
										<span id="readPages">380</span> 페이지
								</p>
								<div class="progress-bar">
									<div class="progress-fill"></div>
								</div>
								<p class="progress-text"></p>
							</div>
							
							<div class="progress">
								<p class="book-title">해리포터</p>
								<p> 총 <span id="totalPages">248</span> 페이지 중
										<span id="readPages">190</span> 페이지
								</p>
								<div class="progress-bar">
									<div class="progress-fill"></div>
								</div>
								<p class="progress-text"></p>
							</div>
						</article>
					</div>
				</section>
			</div>
			
			
			<!-- bottom.jsp import -->
			<c:import url = "/WEB-INF/views/layout/bottom.jsp"></c:import>		
		</div>
	</body>
</html>