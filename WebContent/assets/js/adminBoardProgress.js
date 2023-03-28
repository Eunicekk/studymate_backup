var dayBoardChart = document.getElementById('day-board-chart');
var monthBoardChart = document.getElementById('month-board-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';

// 일별 포트폴리오 게시물 등록 및 삭제 추이
new Chart(dayBoardChart, {
    type: 'line',
    data: {
        labels : ['Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat'],
        datasets : [
            {
                type: 'bar',
                label : '포트폴리오 등록 수',
                data: [15, 28, 11, 23, 17, 5, 8],
                backgroundColor: 'rgba(53, 162, 263, 0.5)',
                borderColor: 'rgb(53, 162, 263)',
                borderRadius: 10,
                borderWidth: 3
            },
            {
                type: 'bar',
                label : '포트폴리오 삭제 수',
                data: [12, 19, 22, 5, 2, 8, 13],
                backgroundColor: 'rgb(255, 100, 132, 0.5)',
                borderColor: 'rgb(255, 100, 132)',
                borderRadius: 10,
                borderWidth: 3
            }
        ]
    },
    options: {
        responsive : false,
        scales: {
            y: {
                beginAtZero: true,
                suggestedMax: 30,
                max: 30
            }
        }
    }
});

// 월별 포트폴리오 등록 및 삭제 추이
new Chart(monthBoardChart, {
    type: 'line',
    data: {
        labels : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets : [
            {
                type: 'bar',
                label : '포트폴리오 등록 수',
                data: [72, 65, 48, 35, 29, 56, 21, 37, 16, 61, 44, 36],
                backgroundColor: 'rgba(53, 162, 263, 0.5)',
                borderColor: 'rgb(53, 162, 263)',
                borderRadius: 10,
                borderWidth: 3
            },
            {
                type: 'bar',
                label : '포트폴리오 삭제 수',
                data: [12, 19, 22, 54, 14, 31, 42, 22, 17, 30, 8, 16],
                backgroundColor: 'rgb(255, 100, 132, 0.5)',
                borderColor: 'rgb(255, 100, 132)',
                borderRadius: 10,
                borderWidth: 3
            }
        ]
    },
    options: {
        responsive : false,
        scales: {
            y: {
                ticks: {
                    stepSize: 10
                },
                beginAtZero: true,
                suggestedMax: 80,
                max: 80
            }
        }
    }
});