var dayCafeChart = document.getElementById('day-cafe-chart');
var monthCafeChart = document.getElementById('month-cafe-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';




var cafeDayList = [];
var cafeDayCnt = [];

var cafeMonthList = [];
var cafeMonthCnt = [];

function chartAjax() {
	$.ajax({
		url: '/admin/cafeChart.ad',
		type: 'post',
		dataType: 'json',
		success: function(cafeDay) {

			$.each(cafeDay, function() {
				cafeDayList.push(this["day"])
				cafeDayCnt.push(this["cnt"])

			})
			console.log(cafeDayList);
			console.log(cafeDayCnt);


			const ctx = document.getElementById('day-cafe-chart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: cafeDayList,
					datasets: [
						{
							label: '카폐 예약 건수',
							data: cafeDayCnt,
							backgroundColor: 'rgba(53, 162, 263, 0.5)',
							borderColor: 'rgb(53, 162, 263)',
							borderWidth: 3,
							pointStyle: 'circle',
							pointRadius: 8,
							pointHoverRadius: 15,
							tension: 0.4
						},
						{
							label: '카폐 취소 건수',
							data: [8, 2, 13, 4, 7, 9, 12],
							backgroundColor: 'rgb(255, 100, 132, 0.5)',
							borderColor: 'rgb(255, 100, 132)',
							borderWidth: 3,
							pointStyle: 'circle',
							pointRadius: 8,
							pointHoverRadius: 15,
							tension: 0.4
						}
					]
				},
				options: {
					responsive: false,
					scales: {
						y: {
							beginAtZero: true,
							suggestedMax: 100,
							max: 100
						}
					}
				}
			});


		},
		error: function() {
			alert("통신 실패");
		}
	});
}


function MonChartAjax() {
	$.ajax({
		url: '/admin/cafeMonthChart.ad',
		type: 'post',
		dataType: 'json',
		success: function(cafeMonth) {

			$.each(cafeMonth, function() {
				cafeMonthList.push(this["mon"])
				cafeMonthCnt.push(this["monCnt"])

			})


			const ctx2 = document.getElementById('month-cafe-chart').getContext('2d');
			const myChart2 = new Chart(ctx2, {
				type: 'line',
				data: {
					labels: cafeMonthList,
					datasets: [
						{
							label: '카페 예약 건수',
							data: cafeMonthCnt,
							backgroundColor: 'rgba(53, 162, 263, 0.5)',
							borderColor: 'rgb(53, 162, 263)',
							borderWidth: 3,
							pointStyle: 'circle',
							pointRadius: 8,
							pointHoverRadius: 15,
							tension: 0.4
						},
						{
							label: '카페 취소 건수',
							data: [51, 45, 16, 27, 10, 56, 12, 38, 29, 6, 25, 31],
							backgroundColor: 'rgb(255, 100, 132, 0.5)',
							borderColor: 'rgb(255, 100, 132)',
							borderWidth: 3,
							pointStyle: 'circle',
							pointRadius: 8,
							pointHoverRadius: 15,
							tension: 0.4
						}
					]
				},
				options: {
					responsive: false,
					scales: {
						y: {
							beginAtZero: true,
							suggestedMax: 150,
							max: 150
						}
					}
				}
			});


		},
		error: function() {
			alert("통신 실패");
		}
	});
}

chartAjax();
MonChartAjax();



