/**
 * slideShow.js
 */
 
$(document).ready(function () {
    const $slidePannel = $("#slidePannel");
    const $slides = $(".slideImg");
    const $prevBtn = $("#prevBtn");
    const $nextBtn = $("#nextBtn");
    const $toggleBtn = $("#toggleBtn");
    const $swiperCurrent = $("#swiper-page-current");
    const $swiperTotal = $("#swiper-page-total");
    const slideCount = $slides.length;
    let slideWidth = $("#slideShowBox").width(); // 부모 요소 기준으로 너비 설정
    
    let currentIndex = 0;
    let autoPlay = true;
    let interval;
    let lastClickTime = Date.now();
    let resizeTimeout;

    // 슬라이드 패널 너비 설정: 윈도우의 크기가 변경될 때, 슬라이드 이미지가 짤리는 현상 발생 해결
    function updateSlideWidth() {
        slideWidth = $("#slideShowBox").width(); // 변경된 슬라이드 너비 반영
        
        $slidePannel.css({
            "transition": "none",
            "width": slideWidth * slideCount
        });

        $slides.css({ "width": slideWidth });

        // 현재 슬라이드 위치 다시 조정
        $slidePannel.css("transform", `translateX(-${currentIndex * slideWidth}px)`);
    	
    	clearTimeout(resizeTimeout);
        resizeTimeout = setTimeout(() => {
            $slidePannel.css("transition", "transform 0.5s ease-in-out");
        }, 200);
    }

    $(window).on("resize", updateSlideWidth); // 화면 크기 변경 시 업데이트
    
    
    
    // 슬라이드 이동
    function updateSlide() {
        $slidePannel.css("transform", `translateX(-${currentIndex * slideWidth}px)`);
        $swiperCurrent.text(currentIndex + 1);
    }

	// 우측으로 이동
    function nextSlide() {
        currentIndex = (currentIndex + 1) % slideCount;
        updateSlide();
        lastClickTime = Date.now(); // 클릭했을 때 시간 기록
    }

	// 좌측으로 이동
    function prevSlide() {
        currentIndex = (currentIndex - 1 + slideCount) % slideCount;
        updateSlide();
        lastClickTime = Date.now(); // 클릭했을 때 시간 기록
    }
    
	// 슬라이드 자동 이동
    function startAutoPlay() {
        interval = setInterval(function() {
        	const elapsedTime = Date.now() - lastClickTime;
        	if(elapsedTime >= 3000){
        		nextSlide();
        		lastClickTime = Date.now(); // 마지막 클릭 시간 갱신(초기화)
        	}
        }, 1000);
        $toggleBtn.css("background-image", "url('/images/stopBtn.png')").text("정지");
    }

    function stopAutoPlay() {
        clearInterval(interval);
        $toggleBtn.css("background-image", "url('/images/playBtn.png')").text("재생");
    }

    $prevBtn.on("click", prevSlide);
    $nextBtn.on("click", nextSlide);
    
    $toggleBtn.on("click", function () {
        autoPlay = !autoPlay;
        if (autoPlay) {
            startAutoPlay();
        } else {
            stopAutoPlay();
        }
    });
	
	updateSlideWidth();
    updateSlide();
    startAutoPlay();
    
   
});



 	
 	
 	
 	
 	
