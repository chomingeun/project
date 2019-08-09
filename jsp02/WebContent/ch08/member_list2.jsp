<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- import문 모두 필요없다. -->    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
function view(userid){
	document.form1.userid.value=userid;
	document.form1.submit();
}
</script>

</head>
<body>
<!-- MemberController의 uri.indexOf("list.do")의 map안에 list와
count값이 포함되어 있으므로 map.count로 출력가능하다. -->
등록된 회원수 : ${map.count}명
<table border="1" width="600px">
 <tr>
   <th>이름</th>
   <th>아이디</th>
   <th>가입일자</th>
   <th>이메일</th>
   <th>핸드폰</th>
 </tr>
 <c:forEach var="dto" items="${map.list }">
   <tr>
     <td>
     <!--${dto.userid} 는 private 멤버변수를 호출하는게 아니라
     내부적으로 getter메소드인 getUserid()가 자동으로 호출되는
     메카니즘이 되어있다. 앞으로 이처럼 함축적 내용이 있는 메소드가
     많이 나온다. -->
   <a href="#" onclick="view('${dto.userid}')">
   ${dto.name}</a></td>
   <td>${dto.userid}</td>
   <td>${dto.join_date}</td>
   <td>${dto.email}</td>
   <td>${dto.hp}</td>
   </tr>
 </c:forEach>

</table>
<form name="form1" method="post" 
action="/jsp02/member_servlet/view.do">
  <input type="hidden" name="userid">
</form>
</body>
</html>