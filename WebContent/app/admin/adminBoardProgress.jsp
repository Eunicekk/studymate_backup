<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Board</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminBoardProgress.css">
</head>

<body>
    <div class="chart">
        <h3>일별 포트폴리오 등록 및 삭제 추이</h3>
        <canvas id="day-board-chart" width="965" height="460"></canvas>
    </div>

    <div class="chart">
        <h3>월별 포트폴리오 등록 및 삭제 추이</h3>
        <canvas id="month-board-chart" width="965" height="600"></canvas>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/adminBoardProgress.js"></script>
</body>

</html>