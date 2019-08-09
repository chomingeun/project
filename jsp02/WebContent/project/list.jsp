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
	$("#btnWrite").click(function(){
		location.href="${path}/project/write.jsp"
	})
	$("#btnLogout").click(function(){
		location.href="${path}/project_member_servlet/logout.do";
	});
});
</script>
<%@ include file="../include/session_check.jsp" %>
<%@ include file="../include/session_check2.jsp" %> 
<c:if test="${param.message == 'login' }">
	<script>
		alert("로그인 되었습니다.");
	</script>
</c:if>
<style type="text/css">
</style>
</head>
<body>
      <nav class="navbar navbar-inverse">
      
  <div class="container-fluid">
  <ul class="nav navbar-nav n">
	<li class="active"><a href="home2.jsp">HOME</a></li>  
      <li class="active"><a href="main.jsp">로그아웃</a></li>
         <li class="active"><a href="../project/video.jsp">VIDEO</a></li>
  <li class="active"><a href="../project/Directions.jsp">오시는길</a></li>
        </ul>
       
</div>
</nav>
<h2>접수</h2>
<button id="btnWrite">글쓰기</button>
<div>
<table class="table bordered">
<tr> 
  <th>번호</th>
  <th>작성자</th>
  <th>제목</th>
  <th>날짜</th>
  <th>조회수</th>
  <th>첨부파일</th>
  <th>다운로드</th>
</tr>
<c:forEach var="dto" items="${list}">
<c:choose> 
  <c:when test="${dto.show == 'y'}">

<tr>
<td>${dto.num}</td>
<td>${dto.writer}</td>
<td>

<!-- 답글 들여쓰기 -->
<c:forEach var="i" begin="1" end="${dto.re_level}">
   &nbsp;&nbsp;
</c:forEach>
<a href="${path}/board_servlet/view.do?num=${dto.num}">
${dto.subject}</a>
<!-- 댓글갯수 표시  -->
<c:if test="${dto.comment_count > 0}">
<span style="color:red;">(${dto.comment_count})</span>
</c:if>
</td>
<td>${dto.reg_date}</td>
<td>${dto.readcount}</td>

  <td align="center">
    <c:if test="${dto.filesize > 0}">
      <a href="${path}/board_servlet/download.do?num=${dto.num}">
       <img src="../images/file.gif">
      </a> 
  </c:if>
  </td>
  <td>${dto.down}</td>
</tr>
</c:when>
<c:otherwise>
 <%-- <tr>
   <td>${dto.num}</td>
   <td colspan="6" align="center">
     삭제된 게시물입니다.
   </td>
 </tr>  --%>
</c:otherwise>
</c:choose>
</c:forEach>
</table>
</div>

</body>
</html>