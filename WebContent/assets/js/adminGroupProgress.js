var dayGroupChart = document.getElementById('day-group-chart');
var monthGroupChart = document.getElementById('month-group-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';

// 일별 스터디 그룹 등록 추이
new Chart(dayGroupChart, {
    type: 'line',
    data: {
        labels : ['Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat'],
        datasets : [
            {
                label : '스터디 그룹 등록 건수',
                data: [15, 28, 11, 23, 17, 5, 8],
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

// 월별 스터디 그룹 등록 추이
new Chart(monthGroupChart, {
    type: 'line',
    data: {
        labels : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets : [
            {
                label : '스터디 그룹 등록 건수',
                data: [72, 61, 57, 15, 34, 75, 54, 29, 31, 8, 47, 33],
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
        responsive : false,
        scales: {
            y: {
                beginAtZero: true,
                suggestedMax: 80,
                max: 80
            }
        }
    }
});