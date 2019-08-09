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
		var userid=$("#userid").val(); //id가 userid인 태그에 입력된 값
		var passwd=$("#passwd").val();
		var name=$("#name").val();
		//파라미터 구성{"변수명":값, "변수명":값}
		var param={"userid": userid, "passwd": passwd, "name": name};
	  $.ajax({
		 type: "post",
		 url: "/jsp02/member_servlet/join_oracle_secret.do",
		 data: param,
		 success: function(){ alter("처리가 완료되었습니다."); }
	  });
 });	
});

</script>
</head>
<body>
<h2>회원가입과 로그인(오라클 암호화)</h2>
아이디 : <input id="userid"><br>
비밀번호 : <input type="password" id="passwd"><br>
이름 : <input id="name"><br>
<button id="btnJoin">회원가입</button>

</body>
</html>