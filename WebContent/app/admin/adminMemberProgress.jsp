<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminMemberProgress.css">
</head>

<body>

    <div class="chart">
        <h3>일별 회원 가입 및 탈퇴 추이</h3>
        <canvas id="day-member-chart" width="965" height="460"></canvas>
    </div>

    <div class="chart">
        <h3>월별 회원 가입 및 탈퇴 추이</h3>
        <canvas id="month-member-chart" width="965" height="600"></canvas>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/adminMemberProgress.js"></script>

</body>

</html>