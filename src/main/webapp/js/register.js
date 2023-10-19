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
	
	// null 체크 empty 체크
	 if (!id) {
        alert("아이디를 입력해주세요.");
        return;
    }
    if (!pw) {
        alert("비밀번호를 입력해주세요.");
        return;
    }
    if (!email) {
        alert("이메일을 입력해주세요.");
        return;
    }
    if (!name) {
        alert("이름을 입력해주세요.");
        return;
    }
    if (!nickname) {
        alert("닉네임을 입력해주세요.");
        return;
    }
    if (!sex) {
        alert("성별을 선택해주세요.");
        return;
    }
    
    // 띄어쓰기가 포함되어 있는지 확인
    if (id.includes(" ") || pw.includes(" ") || name.includes(" ") || email.includes(" ")|| nickname.includes(" ")|| sex.includes(" ")) {
        alert("공백 안댐");
        return;
    }
    // 아이디/이메일 중복 체크 
    const querySnapshot = await getDocs(collection(db, "members"));
    querySnapshot.forEach((doc) => {
        const data = doc.data();
        if (data.id === id) {
            alert("이미 존재하는 아이디 입니다.");
            return;
        }
        if (data.email === email) {
            alert("이미 존재하는 이메일 입니다.");
            return;
        }
        if (data.nickname === nickname) {
            alert("이미 존재하는 이메일 입니다.");
            return;
        }
    });
    
	var postData = {
		id: id,
		pw: pw,
		name: name,
		email: email,
		sex: sex,
		nickname: nickname
	};
	var timeElapsed = Date.now();
	var newRef = doc(db, 'members', 'member' + timeElapsed);

	setDoc(newRef, postData);
}

async function selectmemberDoc() {
	$('#chatMessageArea').empty();

	const snapshot = await getDocs(collection(db, "members"));
	snapshot.forEach((doc) => {
		var data = doc.data();
		console.log(data.id + " - " + data.pw + " : " + data.name+ " : " + data.email+ " : " + data.sex+ " : " + data.nickname);
		appendMessage(data.id + " - " + data.pw + " : " + data.name+ " : " + data.email+ " : " + data.sex+ " : " + data.nickname);
	});
}

function appendMessage(msg) {
	$('#chatMessageArea').append(msg + "<br>");
	var chatAreaHeight = $('#chatArea').height();
	var maxScroll = $('#chatMessageArea').height() - chatAreaHeight;
	$('#chatArea').scrollTop(maxScroll);
}

$(document).ready(function() {
	console.log(111);
	$('#select').click(function() { selectmemberDoc(); });
	$('#write').click(function() { registerDoc(); });
	$('#login').click(function() { loginDoc(); });
	$('#logout').click(function() { logoutDoc(); });
});