<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%-- <%
int num=Integer.parseInt(request.getParameter("num"));
int sum=0;
for(int i=1; i<=num; i++){
	sum += i;
}
%>
합계 : <%=sum %><br> --%>

<!-- JSTL의 set var="변수명" value="초기값" (scope="page")생략시
현재페이지에서만 사용함을 의미  -->
<c:set var="sum" value="0" />
<!-- foEach var="카운터변수" begin="시작" end="끝" -->
<c:forEach var="i" begin="1" end="${param.num}">
  <c:set var="sum" value="${sum + i}" />
</c:forEach>
합계 : ${sum}

</body>
</html>