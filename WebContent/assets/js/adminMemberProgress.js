var dayMemberChart = document.getElementById('day-member-chart');
var monthMemberChart = document.getElementById('month-member-chart');
Chart.defaults.font.size = 16;
Chart.defaults.font.family = 'Pretendard';

// 일별 회원 가입 및 탈퇴 추이
// 회원 변동 추이 = 회원 가입 - 회원 탈퇴
new Chart(dayMemberChart, {
    type: 'line',
    data: {
        labels : ['Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat'],
        datasets : [
            {
                type: 'line',
                label : '회원 변동 수',
                data: [3, 9, -11, 18, 15, -3, -5],
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
                label : '회원 가입 수',
                data: [15, 28, 11, 23, 17, 5, 8],
                backgroundColor: 'rgba(53, 162, 263, 0.5)',
                borderColor: 'rgb(53, 162, 263)',
                borderRadius: 10,
                borderWidth: 3
            },
            {
                type: 'bar',
                label : '회원 탈퇴 수',
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
                suggestMin: -15,
                min: -15,
                suggestedMax: 30,
                max: 30
            }
        }
    }
});

// 월별 회원 가입 및 탈퇴 추이
new Chart(monthMemberChart, {
    type: 'line',
    data: {
        labels : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets : [
            {
                type: 'line',
                label : '회원 변동 수',
                data: [60, 46, 26, -19, 15, 25, -21, 15, -1, 31, 32, 20],
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
                label : '회원 가입 수',
                data: [72, 65, 48, 35, 29, 56, 21, 37, 16, 61, 44, 36],
                backgroundColor: 'rgba(53, 162, 263, 0.5)',
                borderColor: 'rgb(53, 162, 263)',
                borderRadius: 10,
                borderWidth: 3
            },
            {
                type: 'bar',
                label : '회원 탈퇴 수',
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
                suggestMin: -40,
                min: -40,
                suggestedMax: 80,
                max: 80
            }
        }
    }
});