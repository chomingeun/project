<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function deleteMemo(){
	if(confirm("삭제하시겠습니까?")){
		document.form1.action="${path}/memo_servlet/delete.do";
		document.form1.submit();
	}
}

function updateMemo(){
	var writer=$("#writer").val();
	var memo=$("#memo").val();
	if(writer==""){
		alert("이름을 입력하세요");
		$("#writer").focus();
		return;
	}
	if(memo==""){
		alert("메모를 입력하세요");
		$("#memo").focus();
		return;
	}
	document.form1.action="${path}/memo_servlet/update.do";
	document.form1.submit();
}
</script>
</head>
<body>
<h2>메모 수정</h2>
<form name="form1" id="form1" method="post">
<table border="1" width="550px">
 <tr>
   <td>이름</td>
   <td><input name="writer" id="writer" value="${dto.writer}"></td>
 </tr>
 <tr>
   <td>메모</td>
   <td><input name="memo" id="memo" size="50" value="${dto.memo}"></td>
 </tr>
 <tr>
   <td colspan="2" align="center">
     <input type="hidden" name="idx" id="idx" value="${dto.idx}">
     <input type="button" value="수정" onclick="updateMemo()">
     <input type="button" value="삭제" onclick="deleteMemo()">
   </td>
 </tr>
</table>



</form>
</body>
</html>