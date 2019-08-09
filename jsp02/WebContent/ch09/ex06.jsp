<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Date date=new Date();
out.println(date+"<br>");
%>
<c:set var="date" value="<%=date%>" />
${date}<br>
<fmt:formatDate value="${date}"/><br>
<fmt:formatDate value="${date}" type="date"/><br>
<fmt:formatDate value="${date}" type="time"/><br>
<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"/><br>
<!-- 날짜포맷을 원하는 형식으로 쉽게 표현할 수 있다. -->

<!-- 숫자표현 -->
<c:set var="num" value="123456789.12345"/>
${num}<br>
<!-- 천단위 컴머 -->
<fmt:formatNumber value="${num}" groupingUsed="true"/><br>
<!-- 쉼표 위치 조정 -->
<fmt:formatNumber value="${num}" pattern="#,####.#"/><br>
<!-- 소수점 이하의 값이 없으면 0으로 채움 -->
<fmt:formatNumber value="${num}" pattern="##,###.000"/><br>
</body>
</html>