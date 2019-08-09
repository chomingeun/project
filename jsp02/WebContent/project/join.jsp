<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Example</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript">
$(function(){
  $("#btnJoin").click(function(){
	  //?userid=kim&passwd=1234&name=김철수
	 var param="userid="+$("#userid").val()
	 +"&passwd="+$("#passwd").val()
	 +"&name="+$("#name").val()
	 +"&hp="+$("#hp").val()
	 +"&email="+$("#email").val();
	  $.ajax({
		 type: "post",
		 url: "/jsp02/login_servlet/join.do",
		 data: param,
		 success: function(){
			 alert("추가되었습니다.");
		 }
	  });
  });	
});

</script>
<style type="text/css">
h3{
text-align: center;
}
form{
margin-left: 850px;
padding-top: 150px;

}

#formFooter{
margin-right:auto; 
margin-left: auto;
text-align: center;
}

</style>
</head>
<body>
      <nav class="navbar navbar-inverse">
      
  <div class="container-fluid">
  <ul class="nav navbar-nav n">
	<li class="active"><a href="home2.jsp">HOME</a></li>  
      <li class="active"><a href="${path}/board_servlet/list.do">문제내역</a></li>
      <li class="active"><a href="video.jsp">VIDEO</a></li>
        </ul>
</div>
</nav>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <h3 >회원가입</h3>
    </div>

    <form>
     <input id="userid" type="text"  required="required" placeholder="아이디"><br>
     <input type="password" id="passwd" required="required" placeholder="비밀번호"><br>
     <input id="name" type="text" required="required" placeholder="이름"><br>
     <input id="hp" type="text" required="required" placeholder="HP"><br>
     <input id="email" type="text" required="required" placeholder="이메일"><br>
     
      
      
      
      <input id="btnJoin" type="submit" class="fadeIn fourth" value="회원가입하기">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
     <button><a href="login.jsp">Login</a>&nbsp;|&nbsp;</button>
      <button><a href="home2.jsp">나가기</a></button>
    </div>

  </div>
</div>
</body>
</html>