<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<!-- Latest compiled and minified CSS -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

jQuery library
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

Latest compiled JavaScript
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
</head>
<body>
  <table>
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>나이</td>
      <td>주소</td>
      <td>전화번호</td>
    </tr>
    <tr>
      <td>1</td>
      <td>kim</td>
      <td>20</td>
      <td>서울시</td>
      <td>010-111-5555</td>
    </tr>
    <tr>
      <td>2</td>
      <td>park</td>
      <td>30</td>
      <td>인천시</td>
      <td>010-222-5555</td>
    </tr>
    <tr>
      <td>3</td>
      <td>lee동</td>
      <td>40</td>
      <td>대전시</td>
      <td>010-555-5555</td>
    </tr>
  </table>
  <table class="table">
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>나이</td>
      <td>주소</td>
      <td>전화번호</td>
    </tr>
    <tr>
      <td>1</td>
      <td>kim</td>
      <td>20</td>
      <td>서울시</td>
      <td>010-111-5555</td>
    </tr>
    <tr>
      <td>2</td>
      <td>park</td>
      <td>30</td>
      <td>인천시</td>
      <td>010-222-5555</td>
    </tr>
    <tr>
      <td>3</td>
      <td>lee동</td>
      <td>40</td>
      <td>대전시</td>
      <td>010-555-5555</td>
    </tr>
  </table>

<!-- 양쪽에 약간의 여백이 생기며 반응형 반응 -->
<div class="container">
  <table class="table table-striped">
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>나이</td>
      <td>주소</td>
      <td>전화번호</td>
    </tr>
   <tr>
      <td>1</td>
      <td>kim</td>
      <td>20</td>
      <td>서울시</td>
      <td>010-111-5555</td>
    </tr>
    <tr>
      <td>2</td>
      <td>park</td>
      <td>30</td>
      <td>인천시</td>
      <td>010-222-5555</td>
    </tr>
    <tr>
      <td>3</td>
      <td>lee동</td>
      <td>40</td>
      <td>대전시</td>
      <td>010-555-5555</td>
    </tr>
  </table>
</div>

<div class="container">
<!-- hover는 마우스가 올라갈때 음영처리된다.  -->
  <table class="table table-hover">
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>나이</td>
      <td>주소</td>
      <td>전화번호</td>
    </tr>
    <tr>
      <td>1</td>
      <td>kim</td>
      <td>20</td>
      <td>서울시</td>
      <td>010-111-5555</td>
    </tr>
   <tr>
      <td>2</td>
      <td>park</td>
      <td>30</td>
      <td>인천시</td>
      <td>010-222-5555</td>
    </tr>
    <tr>
      <td>3</td>
      <td>lee동</td>
      <td>40</td>
      <td>대전시</td>
      <td>010-555-5555</td>
    </tr>
  </table>
  <hr>
  <!-- 만약 제대로 출력이 안되면 https://www.w3schools.com/bootstrap로 가서 Be Get Started의 MaxCDN: 설정파일 확인해봄 -->
  <!-- https://www.w3schools.com/bootstrap/bootstrap_get_started.asp  -->
  <a class="btn btn-default pull-right">글쓰기</a>
  <div class="text-center">
    <ul class="pagination">
      <li><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
    </ul>
  </div>
</div>
</body>
</html>
  