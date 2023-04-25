var dayGroupChart = document.getElementById('day-group-chart');
var monthGroupChart = document.getElementById('month-group-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';


var daylist = [];
var cntlist = [];

var MonthList = [];
var MonthCnt = [];

function chartAjax() {
	$.ajax({
		url: '/admin/groupChart.ad',
		type: 'post',
		dataType: 'json',
		success: function(chart) {

			$.each(chart, function() {
				daylist.push(this["day"])
				cntlist.push(this["cnt"])

			})

			console.log(daylist);
			console.log(cntlist);



			const ctx = document.getElementById('day-group-chart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: daylist,
					datasets: [
						{
							label: '스터디 그룹 등록 건수',
							data: cntlist,
							backgroundColor: 'rgba(101, 97, 158, 0.5)',
							borderColor: 'rgb(101, 97, 158)',
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
		url: '/admin/groupMonthChart.ad',
		type: 'post',
		dataType: 'json',
		success: function(chartMonth) {

			$.each(chartMonth, function() {
				MonthList.push(this["mon"])
				MonthCnt.push(this["monCnt"])

			})


			const ctx2 = document.getElementById('month-group-chart').getContext('2d');
			const myChart2 = new Chart(ctx2, {
				type: 'line',
				data: {
					labels: MonthList,
					datasets: [
						{
							label: '스터디 그룹 등록 건수',
							data: MonthCnt,
							backgroundColor: 'rgba(101, 97, 158, 0.5)',
							borderColor: 'rgb(101, 97, 158)',
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

