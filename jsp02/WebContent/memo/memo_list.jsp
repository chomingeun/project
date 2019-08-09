<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>

</head>
<body>
<table border="1" width="700px">
 <tr>
   <th>번호</th>
   <th width="20%">이름</th>
   <th width="60%">메모</th>
   <th>날짜</th>
 </tr>
 <!-- var="개별값" items="리스트" -->
 <c:forEach var="row" items="${list}">
 <tr>
   <td>${row.idx}</td>
   <td>${row.writer}</td>
   <td><a href="${path}/memo_servlet/view.do?idx=${row.idx}">
   ${row.memo}</a></td>
   <td>${row.post_date}</td>
 </tr>
</c:forEach>
</table>
</body>
</html>