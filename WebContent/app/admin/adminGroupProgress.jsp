<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Group</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminGroupProgress.css">
</head>
<body>
    <div class="chart">
        <h3>일별 스터디 그룹 등록 추이</h3>
        <canvas id="day-group-chart" width="965" height="460"></canvas>
    </div>

    <div class="chart">
        <h3>월별 스터디 그룹 등록 추이</h3>
        <canvas id="month-group-chart" width="965" height="600"></canvas>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/adminGroupProgress.js"></script>
</body>
</html>