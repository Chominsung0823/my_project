/**
 * readingChart.js
 */
 
 document.addEventListener("DOMContentLoaded", function () {
    const ctx = document.getElementById("readingChart").getContext("2d");

    new Chart(ctx, {
      type: "bar", // 막대 그래프
      data: {
        labels: ["1주차", "2주차", "3주차", "4주차"], // X축(각 주차)
        datasets: [
        {
          label: "반지의 제왕",
          data: [30, 45, 20, 100], // 가짜 데이터
          backgroundColor: "rgba(54, 162, 235, 0.5)", 
          borderColor: "rgba(54, 162, 235, 1)", 
          borderWidth: 1
        },
        {
          label: "해리 포터",
          data: [50, 60, 10, 80], // 가짜 데이터
          backgroundColor: "rgba(255, 99, 132, 0.5)", 
          borderColor: "rgba(255, 99, 132, 1)", 
          borderWidth: 1
        }
       ]
      },
      options: {
        responsive: true, // 그래프 크기 자동 조절
        scales: {
          y: {
            beginAtZero: true // y축 값이 항상 0에서 시작
          }
        }
      }
    });
  });
  
  /* readingPrgs */
  
  document.addEventListener("DOMContentLoaded", function() {
  	let progress = document.querySelectorAll(".progress");
  	progress.forEach(progress => {
  		let totalPages = parseInt(progress.querySelector("#totalPages").textContent);
	  	let readPages = parseInt(progress.querySelector("#readPages").textContent);
	  	
	  	let progressPercent = ((readPages/totalPages)*100).toFixed(2);
	  	
	  	/* 바의 너비 */
	  	progress.querySelector(".progress-fill").style.width = progressPercent + "%";
	  	
	  	/* 진행률 text */
	  	progress.querySelector(".progress-text").textContent = `(${progressPercent}%) 완료`;
  	});
  	
  });
  
  
  
  