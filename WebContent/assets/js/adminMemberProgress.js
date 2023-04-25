var dayMemberChart = document.getElementById('day-member-chart');
var monthMemberChart = document.getElementById('month-member-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';



var manDaylist = [];
var manCntlist = [];

var manMonthList = [];
var manMonthCnt = [];

var femaleDayList = [];
var femaleCntList = [];

var femaleMonthList = [];
var femaleMonthCnt = [];

var VarianceDay = [];
var VarianceMonth = [];





function FemaleDay() {
	$.ajax({
		url: "/admin/memberChartF.ad",
		type: 'post',
		dataType: 'json',
		success: function(memberDayFemale) {
			$.each(memberDayFemale, function() {
				femaleDayList.push(this["day"])
				femaleCntList.push(this["cnt"])
			})
		}
	});
}

function FemaleMonth() {
	$.ajax({
		url: "/admin/memberMonthChartF.ad",
		type: 'post',
		dataType: 'json',
		success: function(FemaleMonth) {
			$.each(FemaleMonth, function() {
				femaleMonthList.push(this["mon"])
				femaleMonthCnt.push(this["monCnt"])
			})
		}
	});
}




function chartAjax() {
	$.ajax({
		url: '/admin/memberChartM.ad',
		type: 'post',
		dataType: 'json',
		success: function(cafeDayMan) {

			$.each(cafeDayMan, function() {
				manDaylist.push(this["day"])
				manCntlist.push(this["cnt"])

			})
			for (var i = 0; i < manCntlist.legnthl; i++) {
				VarianceDay[i] = manCntlist[i] - femaleCntList[i];
				console.log(VarianceDay[i])
			}

			const ctx = document.getElementById('day-member-chart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: manDaylist,
					datasets: [
						{
							type: 'line',
							label: '회원 변동 수',
							data: VarianceDay,
							backgroundColor: 'rgba(255, 205, 86)',
							borderColor: 'rgb(255, 205, 86)',
							borderWidth: 3,
							pointStyle: 'circle',
							pointRadius: 8,
							pointHoverRadius: 15,
							tension: 0.4
						},
						{
							type: 'bar',
							label: '남자 회원 가입 수',
							data: manCntlist,
							backgroundColor: 'rgba(53, 162, 263, 0.5)',
							borderColor: 'rgb(53, 162, 263)',
							borderRadius: 10,
							borderWidth: 3
						},
						{
							type: 'bar',
							label: '여자 회원 가입 수',
							data: femaleCntList,
							backgroundColor: 'rgb(255, 100, 132, 0.5)',
							borderColor: 'rgb(255, 100, 132)',
							borderRadius: 10,
							borderWidth: 3
						}
					]
				},
				options: {
					responsive: false,
					scales: {
						y: {
							suggestMin: -15,
							min: -15,
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
		url: '/admin/memberMonthChartM.ad',
		type: 'post',
		dataType: 'json',
		success: function(memberMonthMan) {

			$.each(memberMonthMan, function() {
				manMonthList.push(this["mon"])
				manMonthCnt.push(this["monCnt"])

			})

			for (var i = 0; i < manMonthCnt.legnthl; i++) {
				VarianceMonth[i] = manMonthCnt[i] - femaleMonthCnt[i];
				console.log(VarianceMonth[i])
			}


			const ctx2 = document.getElementById('month-member-chart').getContext('2d');
			const myChart2 = new Chart(ctx2, {
				type: 'line',
				data: {
					labels: manMonthList,
					datasets: [
						{
							type: 'line',
							label: '회원 변동 수',
							data: VarianceMonth,
							backgroundColor: 'rgba(255, 205, 86)',
							borderColor: 'rgb(255, 205, 86)',
							borderWidth: 3,
							pointStyle: 'circle',
							pointRadius: 8,
							pointHoverRadius: 15,
							tension: 0.4
						},
						{
							type: 'bar',
							label: '남자 회원 가입 수',
							data: manMonthCnt,
							backgroundColor: 'rgba(53, 162, 263, 0.5)',
							borderColor: 'rgb(53, 162, 263)',
							borderRadius: 10,
							borderWidth: 3
						},
						{
							type: 'bar',
							label: '여성 회원 가입 수',
							data: femaleMonthCnt,
							backgroundColor: 'rgb(255, 100, 132, 0.5)',
							borderColor: 'rgb(255, 100, 132)',
							borderRadius: 10,
							borderWidth: 3
						}
					]
				},
				options: {
					responsive: false,
					scales: {
						y: {
							ticks: {
								stepSize: 10
							},
							suggestMin: -40,
							min: -40,
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


FemaleDay();
FemaleMonth();

chartAjax();
MonChartAjax();




