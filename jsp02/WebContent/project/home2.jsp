<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body{
text-align: center;

}
myCarousel{
width:100%;
margin:auto;
height :100%;
}
</style>
</head>
<body>
<nav>
<button type="button" class="btn"><img src="아이폰로고.jpg" href="main.jsp"></button>
<ul class="nav navbar-nav navbar-right" >
              <h4 style="color: black;">${sessionScope.message}</h4>
      <li><a href="home.jsp"><span style="color: black;">${sessionScope.userid}님이 접속중입니다.</span><button type="button" id="btnLogout">Logout</button></a></li>
      </ul>      
      </nav>
      <nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <ul class="nav navbar-nav">
      <li class="active"><a href="${path}/board_servlet/list.do">주문내역</a></li>
      <li class="active"><a href="video.jsp">VIDEO</a></li>
      <li class="active"><a href="Directions.jsp">오시는길</a></li>
      
        </ul>
</div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel" style="max-height:765px;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="아이폰2.jpg" alt="Image" >      
      </div>
      <div class="item">
      
        <img src="아이폰11.jpg" alt="Image" >
      </div>
      <div class="item">
        <img src="아이폰12.png" alt="Image">
      </div>
	<div class="item">
		<img src="아이패드.jpg" alt="Image"> 
	</div>     
    <div class="item">
		<img src="애플워치.jpg" alt="Image"> 
	</div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphi
      con-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
<nav class="navbar navbar-inverse">

</nav>

<h3>가격정보</h3>
<p>
아이폰 XS Max 정품 액정변동가격(업주문의)<br>
아이폰 XS 정품 액정변동가격(업주문의)<br>
아이폰 XR 정품 액정변동가격(업주문의)<br>
아이폰 X 정품 액정변동가격(업주문의)<br>
아이폰 8 정품 액정변동가격(업주문의)추천<br>
아이폰 8플러스 정품 액정변동가격(업주문의)<br>
아이폰 7 정품 액정변동가격(업주문의)추천<br>
아이폰 7플러스 정품 액정변동가격(업주문의)<br>
아이폰 6s 정품 액정80,000원<br>
아이폰 6s플러스 정품 액정100,000원<br>
아이폰 6 정품 액정60,000원<br>
아이폰 6플러스 정품 액정80,000원<br>
아이폰 5se 정품 액정60,000원<br>
아이폰 정품 배터리변동가격(업주문의)<br>
아이폰 침수세척변동가격(업주문의)<br>
아이폰 메인보드 수리변동가격(업주문의)<br>
전원안들어오는아이폰 데이터복구변동가격(업주문의)<br>
맥북 수리변동가격(업주문의)<br>
아이패드 액정 수리변동가격(업주문의)<br>
</p>
</body>
</html>