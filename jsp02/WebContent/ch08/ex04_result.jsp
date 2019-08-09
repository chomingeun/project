<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
String name=(String)session.getAttribute("name");
int age=(int)session.getAttribute("age");
String job=(String)session.getAttribute("job");
String addr=(String)session.getAttribute("addr");
%> --%>
<%-- 이름 : <%=name %><br>
나이 : <%=age %><br>
직업 : <%=job %><br>
주소 : <%=addr %><br> --%>

이름 : ${sessionScope.name}<br>
나이 : ${sessionScope.age}<br>
직업 : ${sessionScope.job}<br>
주소 : ${sessionScope.addr}<br>
</body>
</html>