<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie cookie=new Cookie("id","");//쿠키값에 id에 대해 빈값 처리해서 id만 삭제
cookie.setMaxAge(0); //즉시 삭제됨
response.addCookie(cookie);//따로 삭제함수는 없어서 addCookie()를 씀
%>
쿠키가 삭제되었습니다.
<a href="useCookie.jsp">쿠키 확인</a>

<!-- <a href="useCookie.jsp?id=kim">쿠키확인</a> -->


</body>
</html>