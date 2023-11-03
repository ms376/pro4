<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="module" src=../js/freeWrite.js></script>
<!-- <script src=../js/loginCheck.js></script> -->
</head>
<body>
		제목 :
	    <input type="text" id="title">
	    <br> 
	    내용 :
	    <input type="text" id="content">
	    <br>
    <input type="button" id="write" value="작성">
</body>
</html>