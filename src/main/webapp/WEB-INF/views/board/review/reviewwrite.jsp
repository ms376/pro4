<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="module" src=../js/reviewwrite.js></script>
</head>
<body>
	<label for="zone">활동 지역 :</label>
	   	<select id="zone">
	       	<option value="서울">서울</option>
	      	<option value="부산">부산</option>
	      	<option value="대구">대구</option>
	      	<option value="인천">인천</option>
	      	<option value="광주">광주</option>
	      	<option value="대전">대전</option>
	      	<option value="울산">울산</option>
	       	<option value="경기">경기</option>
	       	<option value="강원">강원</option>
	       	<option value="경북">경북</option>
	       	<option value="경남">경남</option>
	       	<option value="전북">전북</option>
	       	<option value="전남">전남</option>
	       	<option value="충북">충북</option>
	       	<option value="충남">충남</option>
	       	<option value="제주">제주</option>
	   	</select>
	   <br> 
	<label for="interest">관심 분야 :</label>
	   <select id="interest">
	       <option value="스포츠">스포츠</option>
	       <option value="예술활동">예술활동</option>
	       <option value="봉사활동">봉사활동</option>
	       <option value="문화활동">문화활동</option>
	       <option value="맛집탐험">맛집탐험</option>
	   </select>
	   <br> 
	동아리 이름 :
	   <input type="text" id="Dname">
	   <br>
	   제목 :
	   <input type="text" id="title">
	   <br>
	   내용 :
	   <input type="text" id="content">
	   <br>
	   <input type="button" id="write" value="작성">
</body>
</html>