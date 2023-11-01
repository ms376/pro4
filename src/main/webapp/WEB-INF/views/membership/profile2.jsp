<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>내 정보</title>
    <script type="module" src="../js/profileUpdate.js"></script>
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 10;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .wrapper {
            width: 80%;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        h3 {
            color: #333;
            margin: 0;
        }

        .card {
            padding: 20px;
        }

        .profile-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 10px;
        }

        .profile-info {
            width: 100%;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            color: #333;
        }

        .center {
            display: block;
            margin: auto;
            margin-top: 20px;
            max-width: 100%;
            height: auto;
            border-radius: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            text-align: center;
            margin-top: 20px;
        }

        button {
            display: block;
            margin: auto;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        .pw {
            margin-top: 5px;
        }

        #checkPw {
            font-size: 12px;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s;
            font-size: 14px;
        }

        input[type="text"]:disabled,
        input[type="number"]:disabled,
        select:disabled {
            background-color: #f2f2f2;
            border-color: #f2f2f2;
        }

        input[type="file"],
        input[type="button"] {
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="header no-print">
            <div class="card animated fadeIn">
                <div style="text-align: center;">
                    <h3>내 정보</h3>
                </div>
                <script>
                    document.addEventListener("DOMContentLoaded", function() {
                        var userData = sessionStorage.getItem("loggedInUser");
                        if (userData) {
                            var user = JSON.parse(userData);
                            var id = user.id;
                            var pw = user.pw;
                            var name = user.name;
                            var nickname = user.nickname;
                            var address = user.address;
                            var detailAddress = user.detailAddress;
                            var birth = user.birth;
                            var interest = user.interest;
                            var email = user.email;
                            var phone = user.phone;
                            var sex = user.sex;

                            document.getElementById("lid").textContent = id;
                            document.getElementById("lpw").textContent = pw;
                            document.getElementById("lname").textContent = name;
                            document.getElementById("lnick").textContent = nickname;
                            document.getElementById("laddr").textContent = address;
                            document.getElementById("laddrd").textContent
                            ("laddrd").textContent = detailAddress;
                            document.getElementById("lbirth").textContent = birth;
                            document.getElementById("linterest").textContent = interest;
                            document.getElementById("lemail").innerText = email;
                            document.getElementById("lphone").innerText = phone;
                            document.getElementById("lsex").innerText = sex;
                        } else {
                            console.log("세션 스토리지에서 user 데이터를 찾을 수 없습니다.");
                        }
                    });
                </script>
                <div>
                    <img class="center animated rollIn" src="img/a2.jpg" alt="avatar">
                    <br>
                    <form action="uploadOk" method="post" enctype="multipart/form-data">
                        사진: <input type="file" name="filename"><br /> <input
                            type="submit" value="변경하기">
                    </form>
                </div>
                <form id="updateForm" class="profile-info">
                    <label for="username">아이디: <span id="lid"></span></label>
                    <label for="name">실명: <span id="lname"></span></label>
                    <label for="password">기존 비밀번호: <span id="lpw"></span></label>
                    <label for="newPassword">새 비밀번호: <input type="password" id="newpw" class="pw"></label>
                    <label for="newPasswordConfirm">비밀번호 재확인: <input type="password" id="newpwChk" class="pw"><span id="checkPw"></span></label>
                    <script>
                        $('.pw').focusout(function(){
                            let pass1 = $("#newpw").val();
                            let pass2 = $("#newpwChk").val();
                            
                            if (pass1 !== "" || pass2 !== ""){
                                if (pass1 === pass2){
                                    $("#checkPw").html('비밀번호 일치');
                                    $("#checkPw").css('color', 'green');
                                } else {
                                    $("#checkPw").html('비밀번호 불일치');
                                    $("#checkPw").css('color', 'red');
                                }
                            }
                        });
                    </script>
                    <label for="nickname">기존 닉네임: <span id="lnick"></span></label>
                    <label for="newnickname">새 닉네임: <input type="text" id="newnickname"></label>
                    <label for="address">기존 주소: <span id="laddr"></span> <span id="laddrd"></span></label>
                    <input type="text" id="postcode" placeholder="우편번호" disabled>
                    <input type="button" id="nadd" value="우편번호 찾기">
                    <br>
                    <input type="text" id="newaddr" placeholder="주소" disabled>
                    <br>
                    <input type="text" id="newaddrd" placeholder="상세주소">
                    <input type="text" id="extraAddress" placeholder="참고항목" disabled>
                    <label for="birth">기존 생일: <span id="lbirth"></span></label>
                    <label for="newbirth">새 생일: <input type="number" id="newbirth" oninput='numlimit(this, 6)'><h5>ex) 001225</h5></label>
                    <label for="interest">기존 관심사항: <span id="linterest"></span></label>
                    <label for="newinterest">새 관심사항:</label>
                    <select id="newinterest" name="interest">
                        <option value="운동">운동</option>
                        <option value="게임">게임</option>
                    </select>
                    <label for="email">기존 이메일: <span id="lemail"></span></label>
                    <label for="newemail">새 이메일: <input type="text" id="newemail"></label>
                    <label for="phone">기존 전화번호: <span id="lphone"></span></label>
                    <label for="newphone">새 전화번호: <input type="number" id="newphone" oninput='numlimit(this, 11)'></label>
                    <label for="sex">기존 성별: <span id="lsex"></span></label>
                    <label for="newsex">새 성별:</label>
                    <select id="newsex" name="sex">
                        <option value="남자">남자</option>
                        <option value="여자">여자</option>
                    </select>
                    <br>
                    <button type="button" id="updatepro" onclick="updateProfile()">저장</button>
                </form>
                <button onclick="goBack()">돌아가기</button>
                <div class="form-group"></div>
            </div>
        </div>
        <br />
    </div>
    <script>
        function numlimit(el, maxlength) {
            if (el.value.length > maxlength) {
                el.value = el.value.substr(0, maxlength);
            }
        }

        function updateProfile() {
            // 프로필 업데이트 로직 추가
        }

        function goBack() {
            // 뒤로
            // 뒤로 가기 로직 추가
            window.history.back();
        }
    </script>
</body>

</html>

