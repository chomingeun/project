<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Java 코드 </h2>
<%@ page import="java.util.Enumeration" %>
<%
//request 객체의 헤더 변수 집합
//getHeaderNames()는 일반 for문으로 못돌리기 때문에 Enumeration과 while문으로 씀
Enumeration<String> headerNames=request.getHeaderNames();
while(headerNames.hasMoreElements()){ //다음 요소가 있으면
	String key=(String)headerNames.nextElement();//값을 읽음
	String value=request.getHeader(key);//헤더값 조회
	out.println(key+":"+value+"<br>");
}
%>
</body>
</html>
