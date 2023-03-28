var dayCafeChart = document.getElementById('day-cafe-chart');
var monthCafeChart = document.getElementById('month-cafe-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';

// 일별 카페 예약 추이
new Chart(dayCafeChart, {
    type: 'line',
    data: {
        labels : ['Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat'],
        datasets : [
            {
                label : '카폐 예약 건수',
                data: [15, 28, 11, 23, 17, 5, 8],
                backgroundColor: 'rgba(53, 162, 263, 0.5)',
                borderColor: 'rgb(53, 162, 263)',
                borderWidth: 3,
                pointStyle: 'circle',
                pointRadius: 8,
                pointHoverRadius: 15,
                tension: 0.4
            },
            {
                label : '카폐 취소 건수',
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

// 월별 카페 예약 추이
new Chart(monthCafeChart, {
    type: 'line',
    data: {
        labels : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets : [
            {
                label : '카페 예약 건수',
                data: [72, 61, 57, 15, 34, 75, 54, 29, 31, 8, 47, 33],
                backgroundColor: 'rgba(53, 162, 263, 0.5)',
                borderColor: 'rgb(53, 162, 263)',
                borderWidth: 3,
                pointStyle: 'circle',
                pointRadius: 8,
                pointHoverRadius: 15,
                tension: 0.4
            },
            {
                label : '카페 취소 건수',
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