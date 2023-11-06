<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery.js"></script>
<script type="module" src=../js/reviewlist.js></script>
<style>
    table {
        border: 5px solid black;
    }
</style>
<style>
    #pagination {
      display: flex;
      align-items: center; /* 세로 중앙 정렬 */
    }

    /* #prevPage, #nextPage {
      margin-right: 10px; /* 이전 버튼 오른쪽 마진 추가 */
      margin-left: 10px;
    } */
  </style>
</head>
<body>
 	<label for="searchInput"></label>
    <select>
       	<option value="지역">지역</option>
       	<option value="관심 분야">관심 분야</option>
       	<option value="동아리 이름">동아리 이름</option>
   </select>
    <input type="text" id="searchInput" placeholder="검색어 입력">
   <button id="searchButton">검색</button>
    <table border="1">
        	<tr>
        		<th></th>
                <th>Num</th>
                <th>Zone</th>
                <th>Interest</th>
                <th>Dname</th>
                <th>Id</th>
                <th>Title</th>
                <th>Content</th>
                <th>Date</th>
                <th>Count</th>
            </tr>     
        <tbody id="table-body"></tbody>
        </table>
        <button type="button" onclick="location.href='/reviewwriteform'">리뷰 작성</button>
        
  <div id="pagination">
    <button id="prevPage">이전</button>
    <div id="pageNumbers"></div>
    <button id="nextPage">다음</button>
  </div>
</body>
</html>