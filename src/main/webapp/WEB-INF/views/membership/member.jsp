<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="module" src="../js/member.js"></script>

<script src="https://code.jquery.com/jquery.js"></script>
<style>
  #chatArea{
    width: 200px; height: 100px; overflow-y: auto; border: 1px solid black; 
  }
</style>
</head>
<body>
  <input type="button" id="select" value="조회">
  <div id="chatArea"><div id="chatMessageArea"></div></div>
  <br>
  
  <input type="text" id="email">
  <input type="text" id="pwd">
  <input type="button" id="write" value="작성">
</body>
</html>