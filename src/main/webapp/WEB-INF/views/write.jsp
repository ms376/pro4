<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery.js"></script>
<script type="module" src=../js/write2.js></script>
</head>
<body>
    <input type="button" id="select" value="조회">
    <div id="chatArea">
        <div id="chatMessageArea"></div>
    </div>
    <br> 아이디 :
    <input type="text" id="id">
    <br> 제목 :
    <input type="text" id="title">
    <br> 내용 :
    <input type="text" id="content">
    <br> 작성자 :
    <input type="text" id="author">
    <br>
    <input type="button" id="write" value="작성">
    <br>
    <br>
    <br>
    <br> 아이디 :
    <input type="text" id="id">
	<button id="view">VIEW</button>
    <button onclick="#">조회</button>
    <br> 제목 :
    <input type="text" id="title">
    <br> 내용 :
    <input type="text" id="content">
    <br> 작성자 :
    <input type="text" id="author">
    <br>
    <br>
</body>
</html>