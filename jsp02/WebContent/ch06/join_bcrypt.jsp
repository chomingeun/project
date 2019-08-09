<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
  $("#btnJoin").click(function(){
	  //?userid=kim&passwd=1234&name=김철수
	 var param="userid="+$("#userid").val()
	 +"&passwd="+$("#passwd").val()
	 +"&name="+$("#name").val();
	  $.ajax({
		 type: "post",
		 url: "/jsp02/member_servlet/join_bcrypt.do",
		 data: param,
		 success: function(){
			 alter("추가되었습니다.");
		 }
	  });
  });	
});

</script>
</head>
<body>
<h2>회원가입과 로그인(BCrypt)</h2>
아이디 : <input id="userid"><br>
비밀번호 : <input type="password" id="passwd"><br>
이름 : <input id="name"><br>
<button id="btnJoin">회원가입</button>

</body>
</html>