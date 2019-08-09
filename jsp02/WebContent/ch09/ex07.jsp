<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="str" value="hello jsp" />

<!-- fn:함수 -->
문자열의 길이 : ${fn:length(str)}<br>
키워드의 인덱스 : ${fn:indexOf(str, 'jsp')}<br>
내용 변경 : ${fn:replace(str, 'jsp', 'java')}<br>

</body>
</html>