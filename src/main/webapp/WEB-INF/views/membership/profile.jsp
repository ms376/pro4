<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 정보</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .wrapper {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        h3 {
            color: #3498db;
        }

        .profile-container {
            display: flex;
            margin: 20px;
        }

        .profile-picture {
            text-align: center;
            margin-right: 20px;
        }

        .profile-picture img {
            border-radius: 50%;
            max-width: 100px;
            height: auto;
        }

        .profile-info {
            flex-grow: 1;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            color: #555;
        }

        .change-button {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .change-button:hover {
            background-color: #c0392b;
        }

        a {
            text-decoration: none;
            color: #3498db;
            margin-right: 10px;
        }

        a:hover {
            color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="header no-print">
            <div class="card animate__animated animate__fadeIn">
                <div>
                    <h3>내 정보</h3>
                </div>
                <div class="profile-picture">
                    <img class="animate__animated animate__rollIn" src="img/a2.jpg" alt="avatar">
                </div>
                <script>
                    document.addEventListener("DOMContentLoaded", function() {
                        var userData = sessionStorage.getItem("loggedInUser");
                        if (userData) {
                            var user = JSON.parse(userData);
                            var id = user.id;
                            var name = user.name;
                            var nickname = user.nickname;
                            var address = user.address;
                            var detailAddress = user.detailAddress;
                            var birth = user.birth;
                            var interest = user.interest;
                            var email = user.email;
                            var phone = user.phone;
                            var sex = user.sex;
                            var rank = user.rank;

                            document.getElementById("lid").textContent = id;
                            document.getElementById("lname").textContent = name;
                            document.getElementById("lnick").textContent = nickname;
                            document.getElementById("laddr").textContent = address;
                            document.getElementById("laddrd").textContent = detailAddress;
                            document.getElementById("lbirth").textContent = birth;
                            document.getElementById("linterest").textContent = interest;
                            document.getElementById("lemail").innerText = email;
                            document.getElementById("lphone").innerText = phone;
                            document.getElementById("lsex").innerText = sex;
                            document.getElementById("lrank").innerText = rank;
                        } else {
                            console.log("세션 스토리지에서 user 데이터를 찾을 수 없습니다.");
                        }
                    });
                </script>
                <div class="profile-info">
                    <label for="username">아이디: <span id="lid"></span></label>
                    <label for="fullname">실명: <span id="lname"></span></label>
                    <label for="fullname">닉네임: <span id="lnick"></span></label>
                    <label for="address">주소: <span id="laddr"></span> <span id="laddrd"></span></label>
                    <label for="birthdate">생일: <span id="lbirth"></span></label>
                    <label for="interest">관심사항: <span id="linterest"></span></label>
                    <label for="email">이메일: <span id="lemail"></span></label>
                    <label for="phone">전화번호: <span id="lphone"></span></label>
                    <label for="sex">성별: <span id="lsex"></span></label>
                    <label for="rank">등급: <span id="lrank"></span></label>
                </div><br>
                <a href="/profileC">정보 수정</a>
                <button class="change-button">회원 탈퇴</button>
                <div class="form-group" style="text-align: center;"></div>
            </div>
        </div>
        <br />
    </div>
</body>
</html>
