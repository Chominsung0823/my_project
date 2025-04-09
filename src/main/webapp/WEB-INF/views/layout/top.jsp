<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

		<header>
			<div id="headerBox">
					<!-- 로고 -->
				<div id="logoBox">
					<a href="<c:url value='/'/>">
						<img alt="로고 이미지" src="<c:url value='/images/logo.png' />">
					</a>
				</div>
				
				<!-- 검색창 -->
				<div id="searchBox">
					<form id="searchForm" name="searchForm" method="get"
							action="<c:url value='/'/>">
						<input type="text" id="searchTxt" placeholder="검색어를 입력하세요">
						<button type="submit" id="searchBtn">검색</button>
					</form>
				</div>
				
				<!-- 로그인/회원가입 전/후 -->
				<div id="topMenuBox">
					로그인 / 회원가입
					<%-- <!-- 로그인 하지 않았을 때 -->
					<c:if test="${empty sessionScope.sid }">
						<a href="<c:url value='/' />">로그인</a>
						<a href="<c:url value='/' />">회원가입</a>
					</c:if>
					
					<!-- 로그인 성공 -->
					<c:if test="${not empty sessionScope.sid }">
						${sessionScope }
						<a href="<c:url value='/' />">마이페이지</a>
						<a href="<c:url value='/' />">로그아웃</a>
					</c:if> --%>
				</div>
			</div> <!-- headerBox 끝 -->
			
			<!-- nav 바 -->
			<nav>
				<!-- 메인 메뉴 -->
				<div id="mainMenuBox">
					<ul id="menuItem">
						<li><a href="#">도서검색</a></li>
						<li><a href="#">단어 찾기</a></li>
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">서브 메뉴</a></li>
						<li><a href="#">안내</a></li>
					</ul>
				</div>
				
				<!-- 서브 메뉴 -->
				<div id="subMenuBox">
					<!-- 도서검색 -->
					<ul class="subMenuItem">
						<li><a href="<c:url value='#' />">통합검색</a></li>
						<li><a href="<c:url value='#' />">십진분류 검색</a></li>
					</ul>
					
					<!-- 단어찾기 -->
					<ul class="subMenuItem">
						<li><a href="<c:url value='#'/>">단어 찾기</a></li>
					</ul>
					
					<!-- 마이페이지 -->
					<ul class="subMenuItem">
						<li><a href="<c:url value='#'/>">마이페이지</a></li>
						<li><a href="<c:url value='#'/>">나의 독서 활동</a></li>
						<li><a href="<c:url value='#'/>">한달 독서 그래프</a></li>
					</ul>
					
					<!-- 서브메뉴 -->
					<ul class="subMenuItem">
						<li><a href="<c:url value='#'/>">서브 메뉴 아이템1</a></li>
						<li><a href="<c:url value='#'/>">서브 메뉴 아이템1</a></li>
						<li><a href="<c:url value='#'/>">서브 메뉴 아이템1</a></li>
					</ul>
					
					<!-- 안내 -->
					<ul class="subMenuItem">
						<li><a href="<c:url value='#'/>">공지사항</a></li>
						<li><a href="<c:url value='#'/>">자주 묻는 질문</a></li>
						<li><a href="<c:url value='#'/>">이용 안내</a></li>
						<li><a href="<c:url value='#'/>">헤당 사이트 소개</a></li>
					</ul>
				</div>
			</nav>
		</header>