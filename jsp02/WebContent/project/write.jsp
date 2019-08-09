<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnSave").click(function(){
		document.form1.submit();
	});
	$("#btnLogout").click(function(){
		location.href="${path}/member_servlet/logout.do";
	});
});

</script>
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

<h2>주문하기</h2>
<form name="form1" method="post" 
action="${path}/board_servlet/insert.do" 
enctype="multipart/form-data">
<table class="table table-hover">
 <tr>
   <td>작성자</td>
   <td><input name="writer" id="writer" value="${sessionScope.userid}"></td>
 </tr>
 <tr>
   <td>제목</td>
   <td><input name="subject" id="subject" size="60"></td>
 </tr>
 <tr>
   <td>본문</td>
   <td><textarea rows="5" cols="60" name="content" id="content">
   </textarea></td>
 </tr>
 <tr>
   <td>첨부파일</td>
   <td><input type="file" name="file1"></td>
 </tr>
 <tr>
   <td>비밀번호</td>
   <td><input type="password" name="passwd" id="passwd"></td>
 </tr>
 <tr>
   <td colspan="2" align="center">
     <input type="button" value="확인" id="btnSave">
	 <button><a href="home2.jsp">취소</a></button>
	   </td>
 </tr>
</table>
</form>


</body>
</html>