var dayBoardChart = document.getElementById('day-board-chart');
var monthBoardChart = document.getElementById('month-board-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';

var daylist = [];
var cntlist = [];

var MonthList = [];
var MonthCnt = [];

function chartAjax() {
	$.ajax({
		url: '/admin/boardChart.ad',
		type: 'post',
		dataType: 'json',
		success: function(chart) {

			$.each(chart, function() {
				daylist.push(this["day"])
				cntlist.push(this["cnt"])
				
			})
			
			console.log(daylist);
			console.log(cntlist);
			


			const ctx = document.getElementById('day-board-chart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: daylist,
					datasets: [
						{
							type: 'line',
							label: '포트폴리오 등록 수',
							data: cntlist,
							backgroundColor: 'rgba(53, 162, 263, 0.5)',
							borderColor: 'rgb(53, 162, 263)',
							borderRadius: 10,
							borderWidth: 3
						},
						
					]
				},
				options: {
					responsive: false,
					scales: {
						y: {
							beginAtZero: true,
							suggestedMax: 30,
							max: 30
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
		url: '/admin/boardMonthChart.ad',
		type: 'post',
		dataType: 'json',
		success: function(chartMonth) {

			$.each(chartMonth, function() {
				MonthList.push(this["mon"])
				MonthCnt.push(this["monCnt"])
				
			})
			
			console.log(daylist);
			console.log(cntlist);
			


			const ctx2 = document.getElementById('month-board-chart').getContext('2d');
			const myChart2 = new Chart(ctx2, {
				type: 'line',
				data: {
					labels: MonthList,
					datasets: [
						{
							type: 'line',
							label: '포트폴리오 등록 수',
							data: MonthCnt,
							backgroundColor: 'rgba(53, 162, 263, 0.5)',
							borderColor: 'rgb(53, 162, 263)',
							borderRadius: 10,
							borderWidth: 3
						},
						
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


