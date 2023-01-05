<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap5.2.min.css" />
<script src="./resources/js/bootstrap.bundle.min.js"></script>
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "마니네 팬 공간에 오신 것을 환영합니다.";
	String tagline = "Welcome to Jmany's fan page!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
		
	<div class="container">
		<div class="text-center">
		마니네 게임 공략 페이지 : <a href ="https://www.jmany.ga/">www.jmany.ga</a>
		</div>
	</div>
	
	<div id="carouselExampleInterval" class="carousel slide carousel-dark w-75 m-auto"  data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" >
      <img src="모코코몰라.png" class="d-block w-75 m-auto" alt="">
    </div>
    <div class="carousel-item" >
      <img src="모코코이해했어.png" class="d-block w-75 m-auto" alt="">
    </div>
    <div class="carousel-item" >
      <img src="모코코콘줘.png" class="d-block w-75 m-auto" alt="">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
	
		
		
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속  시각: " + CT + "\n");
			%>
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>