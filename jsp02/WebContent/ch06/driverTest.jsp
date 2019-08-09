<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
Connection conn=null;
try{
	String jdbcUrl="jdbc:oracle:thin:@localhost:1521:xe";
	String dbId="java";//오라클 접속 id
	String dbPass="java1234";//비번
	//jdbc driver 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//getConnection(연결문자열,아이디,비번) DB에 접속
	conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);
	out.println("오라클에 접속되었습니다.");
}catch(Exception e){
	out.println("오라클 접속 에러....");
	e.printStackTrace();
}
%>
</body>
</html>