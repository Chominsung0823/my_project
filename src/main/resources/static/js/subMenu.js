/**
 * subMenu.js
 */
 
 document.addEventListener("DOMContentLoaded", function() {
 	const menuItems = document.querySelectorAll("#menuItem a");
 	const subMenu = document.getElementById("subMenuBox");
 	
 	let hideTimeout; // 숨김 에약
 	
 	menuItems.forEach((a) => {
	 	// 1. 메인 메뉴에 mouseenter
	 	a.addEventListener("mouseenter", function() {
	 		clearTimeout(hideTimeout);
	 		subMenu.classList.add("active");
	 	});
	 	
	 	// 2. 메인 메뉴에 mouseleave
	 	a.addEventListener("mouseleave", function() {
	 		hideTimeout = setTimeout(() => {
	 			subMenu.classList.remove("active");
	 		}, 100); // 숨김 예약
	 	});
 	
 	});
 	
 	// 3. 서브 메뉴에 mouseenter
 	subMenu.addEventListener("mouseenter", function() {
 		clearTimeout(hideTimeout); // 숨김 예약 삭제(서브 메뉴 유지)
 		// active 추가하지 않음: 다시 마우스 올렸을 때 서브 메뉴가 생김
 	});
 	
 	
 	// 4. 서브 메뉴에 mouseleave
 	subMenu.addEventListener("mouseleave", function() {
 		subMenu.classList.remove("active");
 	});
 });



















