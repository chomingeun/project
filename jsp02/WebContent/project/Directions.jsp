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
  <style type="text/css">
  h3{
  text-align: center;
  }
  iframe{
   text-align:center;
   padding-left: 600px; 
   margin-top: 100px;
  }
  #home {
  float:right;
  }
  
  </style>
  </head>
<body>
      <nav class="navbar navbar-inverse">
      
  <div class="container-fluid">
  <ul class="nav navbar-nav n">
	<li class="active"><a href="home2.jsp">HOME</a></li>  
      <li class="active"><a href="main.jsp">로그아웃</a></li>
      <li class="active"><a href="${path}/board_servlet/list.do">주문내역</a></li>
      <li class="active"><a href="video.jsp">VIDEO</a></li>
        </ul>
</div>
</nav>
<h3>오시는길</h3>
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12656.957699622079!2d127.02072626977538!3d37.525853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.
 1!3m3!1m2!1s0x357ca38e21b448dd%3A0x9c5ed5247f0d1c70!2z7JWE7J207ZS97IqkIOyVleq1rOygleygkCDslYTsnbTtj7Ag7IiY66asIOyEvO2EsA!5e0!3m2!1sko!2skr!4v1564971689630!5m2!1s
 ko!2skr" width="1300" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</body>
</html>