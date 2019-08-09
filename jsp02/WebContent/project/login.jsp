<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Example</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">


body{
  font-family: "맑은 고딕";
         color: #333;
         margin-bottom: center;
       background-color: #6E6E6E;
}
nav{
background-color: #585858;
}
h3{

text-align: center;
}
form{
         width:305px;
         margin:0 auto;
         border: 1px solid gray;
         border-radius: 5px;
         /* padding-top: 80px auto; */
}

</style>
</head>
<body>
   <%@ include file="../include/header.jsp" %>
  <c:if test="${param.message == 'error' }">
    <script>
      alert("아이디 또는 비밀번호가 일치하지 않습니다.")
    </script>
</c:if>
<c:if test="${param.message == 'logout' }">
    <script>
      alert("로그아웃되었습니다.");
    </script>
</c:if> 
<nav class="navbar navbar-inverse">
 <li><a href="main.jsp"><span class="glyphicon glyphicon-log-in"></span>main</a></li>
</nav>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <div class="fadeIn first">
      <h3>Login</h3>
<div class="jumbotron text-center">

<form method="post" action="${path}/loginsession_servlet/login.do">
<h3 style="text-align:center;"></h3>
<div class="box_login">
<input type="text" class="form-control" placeholder="아이디" name="userid"  >
</div>
<div class="form-group">

<input type="password" class="form-control" placeholder="비밀번호" name="passwd"    >
</div>
<input type="submit" alcss="btn btn-primary form-control" value="로그인">
 <button><a href="join.jsp">회원가입</a></button>
 
</form>
</div>

</div>
</div>
</div>
</body>
</html>
