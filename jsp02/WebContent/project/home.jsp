<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <%@ include file="../include/header.jsp" %> --%>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body{
text-align: center;
background-color: #585858;

}
myCarousel{
width:100% auto;
margin:auto;
height :100%;
}
</style>
</head>
<body>
<a type="button" class="btn"href="main.jsp"><img src="아이폰로고.jpg"></a>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
 
   <ul class="nav navbar-nav navbar-right">
     <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
   </ul>
</div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel" style="max-height:850px;">
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
        <img src="아이폰12.png" alt="Imagse">
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
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</body>
</html>