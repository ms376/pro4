<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="module" src=../js/reviewview.js></script>

  
</head>
<body>
<table border="1">
        
        <tbody id="table-body2"></tbody>
        
        </table>
		
		<div>
            <input type="text" id="commentInput" placeholder="댓글을 입력하세요">
            <button id="addCommentBtn">댓글 추가</button>
        </div>
		
		<table border="1">
        	<tr>
        		
                <th>작성자</th>
                <th>내용</th>
                <th>날짜</th>
            </tr>
            <tbody id="comments-table"></tbody>       
        </table>

</body>
</html>