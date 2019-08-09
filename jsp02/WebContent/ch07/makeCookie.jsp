<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.net.URLEncoder" %>
<%
Cookie cookie=new Cookie("id","김철수");
Cookie cookie2=new Cookie("pwd","1234");
Cookie cookie3=new Cookie("age","20");
cookie.setMaxAge(10); //쿠키의 유효시간(10초), 10초후 삭제됨
response.addCookie(cookie); //쿠키 생성
response.addCookie(cookie2);
response.addCookie(cookie3);
%>
쿠키가 생성되었습니다<br>

<a href="useCookie.jsp">쿠키 확인</a>

</body>
</html>