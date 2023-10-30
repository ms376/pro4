import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs, setDoc, doc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

const firebaseConfig = {
	apiKey: "AIzaSyCYTzwY4INgoQAJ_e8ZdxlrOrJyIsb0iEA",
	authDomain: "pro4-3a50f.firebaseapp.com",
	databaseURL: "https://pro4-3a50f-default-rtdb.firebaseio.com",
	projectId: "pro4-3a50f",
	storageBucket: "pro4-3a50f.appspot.com",
	messagingSenderId: "307587646265",
	appId: "1:307587646265:web:1a1d9ab9129d2c2956dee8",
	measurementId: "G-LMXETWQJGT"
};
var app = initializeApp(firebaseConfig);
var db = getFirestore(app);

async function registerDoc() {
    var id = $('#id').val();
    var pw = $('#pw').val();
    var name = $('#name').val();
    var email = $('#email').val();
    var sex = $('#sex').val();
    var nickname = $('#nickname').val();
    var birth = $('#birth').val();
    var address = $('#address').val();
    var detailAddress = $('#detailAddress').val();
    var rank = $('#rank').val(); // 등급 뺴야함
    var interest = $('#interest').val();
    var phone = $('#phone').val();
    var img=$('#img');

    // null 체크 empty 체크
    var errorMessage = "";

    if (!id) {
        errorMessage = "아이디를 입력해주세요.";
    } else if (!pw) {
        errorMessage = "비밀번호를 입력해주세요.";
    } else if (!email) {
        errorMessage = "이메일을 입력해주세요.";
    } else if (!name) {
        errorMessage = "이름을 입력해주세요.";
    } else if (!nickname) {
        errorMessage = "닉네임을 입력해주세요.";
    } else if (!sex) {
        errorMessage = "성별을 선택해주세요.";
    } else if (!address) {
        errorMessage = "주소를 입력해주세요.";
    }

    // 띄어쓰기가 포함되어 있는지 확인
    if (id.includes(" ") || pw.includes(" ") || name.includes(" ") || email.includes(" ")) {
        errorMessage = "공백 안댐";
    }

    // 아이디/이메일 중복 체크
    const querySnapshot = await getDocs(collection(db, "members"));
    querySnapshot.forEach((doc) => {
        const data = doc.data();
        if (data.id === id) {
            errorMessage = "이미 존재하는 아이디 입니다.";
        }
        if (data.email === email) {
            errorMessage = "이미 존재하는 이메일 입니다.";
        }
        if (data.nickname === nickname) {
            errorMessage = "이미 존재하는 닉네임 입니다.";
        }
        if (data.phone === phone) {
            errorMessage = "이미 존재하는 전화번호 입니다.";
        }
    });

    if (errorMessage) {
        alert(errorMessage);
    } else {
        var postData = {
            id: id,
            pw: pw,
            name: name,
            email: email,
            sex: sex,
            nickname: nickname,
            birth: birth,
            address: address,
            detailAddress: detailAddress,
            rank: rank,
            interest: interest,
            phone: phone,
            img: "defaultIMG"
        };

        var timeElapsed = Date.now();
        var newRef = doc(db, 'members', 'member' + timeElapsed);

        await setDoc(newRef, postData);
        alert("회원가입이 성공했습니다.");
        window.location.href = '/';
    }
}
// 회원정보 조회
async function selectmemberDoc() {
	$('#ad').empty();

	const snapshot = await getDocs(collection(db, "members"));
	snapshot.forEach((doc) => {
		var data = doc.data();
		console.log("DB에잘들어갔어");
		appendMessage(data.id + " - " + data.pw + " : " + data.name + " : " + data.email + " : " + data.sex + " : " + data.nickname + " : " + data.birth + " : " + data.address + " : " + data.rank + " : " + data.interest + " : " + data.phone);
	});
}
// 로그인
async function loginDoc() {
	console.log("ddd");
	var id = $('#idInput').val();
	var pw = $('#passwordInput').val();
	let loggedInUser = null; // 세션에 저장할 사용자 정보

	try {
		const querySnapshot = await getDocs(collection(db, "members"));

		querySnapshot.forEach((doc) => {
			const data = doc.data();
			if (data.id === id && data.pw === pw) {
				loggedInUser = data; // 로그인 성공한 사용자 정보 저장
				sessionStorage.setItem('loggedInUser', JSON.stringify(loggedInUser));
				alert("로그인 성공! 사용자: " + data.id);
				window.location.href = '/';
			}
		});

		if (!loggedInUser) {
			alert('로그인 실패: 아이디나 비밀번호를 정확히 입력해주세요.');
		}
	} catch (error) {
		console.error("로그인 중 오류 발생: " + error);
	}
}

function appendMessage(msg) {
	$('#ad').append(msg + "<br>");
	var chatAreaHeight = $('#adArea').height();
	var maxScroll = $('#ad').height() - chatAreaHeight;
	$('#ad').scrollTop(maxScroll);
}

$(document).ready(function() {
	console.log(111);
	$('#select').click(function() { selectmemberDoc(); });
	$('#register').click(function() { registerDoc(); });
	$('#login').click(function() { loginDoc(); });
});