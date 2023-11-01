<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="module" src="../js/findpro.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 class="margin-bottom-xxl text-center">가입 정보 찾기</h3>
	<h3>가입할때 사용하신 이메일을 입력해주세요.</h3>
   <form id="emailForm">
        이메일: <input type="text" id="emailInput">
        <input type="submit" value="검색">
    </form>
    <div id="result"></div>
    
</body>
</html>
