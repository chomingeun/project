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
  h1{
  text-align: center;
  }
  .video{
  padding-top: 100px;
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
      <li class="active"><a href="../project/Directions.jsp">오시는길</a></li>
        </ul>
</div>
</nav>
<div data-theme="b">0.   
				<h1>수리영상</h1>
			</div>
		<div data-role="content" id="video">
		<h2 style="text-align:center; font-weight:400; letter-spacing:3px;">맥북 수리불가판정 수리시도  </h2>
		<p align="middle"><iframe width="560" height="315" src="https://www.youtube.com/embed/lkLFOJ1yykg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
		<h2 style="text-align:center; font-weight:400; letter-spacing:3px;">사설기업과 애플기업 리퍼 가격차이 </h2>
		<p align="middle"><iframe width="560" height="315" src="https://www.youtube.com/embed/2gvF-PEVnZU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
		<button><a href="https://www.youtube.com/results?search_query=%EC%95%A0%ED%94%8C+%EC%88%98%EB%A6%AC">더보기</a> </button>
	</div>
		</div>
</body>
</html>