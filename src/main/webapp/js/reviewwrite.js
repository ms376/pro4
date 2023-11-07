import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs, setDoc, doc, serverTimestamp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

var firebaseConfig = {
	apiKey: "AIzaSyCYTzwY4INgoQAJ_e8ZdxlrOrJyIsb0iEA",
	authDomain: "pro4-3a50f.firebaseapp.com",
	databaseURL: "https://pro4-3a50f-default-rtdb.firebaseio.com",
	projectId: "pro4-3a50f",
	storageBucket: "pro4-3a50f.appspot.com",
	messagingSenderId: "307587646265",
	appId: "1:307587646265:web:1a1d9ab9129d2c2956dee8",
	measurementId: "G-LMXETWQJGT"
};
var userData; // userData를 전역 변수로 선언
async function checkSession() { 
	userData = sessionStorage.getItem('loggedInUser'); // 전역 변수에 할당
    if(!userData) {
		alert("로그인 후 이용해주세요.");
		window.location.href = "/login"; // 로그인페이지 이동
		return false;
	}
	return true;
}
checkSession();

// 전역변수
var app = initializeApp(firebaseConfig);
var db = getFirestore(app);
var num = 0;


// 글쓰기 
async function writeDoc() {
	
  var loggedInUser = JSON.parse(sessionStorage.getItem('loggedInUser'));
  var id = loggedInUser.id;
  var zone = $('#zone').val();
  var interest = $('#interest').val() 
  var Dname = $('#Dname').val();
  var title = $('#title').val()
  var content = $('#content').val();
  var timestamp = serverTimestamp();
  var count = 0;
     
  
  if (!zone) {
		alert("지역을 선택해주세요.");
		return;
	}
  if (!interest) {
		alert("관심분야를 선택해주세요.");
		return;
	}
  if (!Dname) {
		alert("동아리 이름을 입력해주세요.");
		return;
	}
  if (!title) {
		alert("제목를 입력해주세요.");
		return;
	}
	
  if (!content) {
		alert("내용를 입력해주세요.");
		return;
	}
  
	try {
    const querySnapshot = await getDocs(collection(db, 'reviewboards'));
    querySnapshot.forEach(doc => {
      const data = doc.data();
      if (!isNaN(data.num) && data.num > num) {
        num = data.num; // 유효한 num 값이면 가장 큰 값으로 설정합니다.
      }
    });
    
    num++;
  } catch (error) {
    console.error("Error fetching documents: ", error);
  }
   
	var postData = {
		zone: zone,
		interest: interest,
		Dname: Dname,
		id: id,
		title: title,
		content: content,
		date: timestamp,
		num: num,
		count: count
	};
	var timeElapsed = Date.now();
	var newRef = doc(db, 'reviewboards', 'reviewboard' + timeElapsed);

	await setDoc(newRef, postData);
	alert("리뷰 작성이 완료되었습니다.");
	window.location.href="/review";
}
$(document).ready(function() {
	$('#write').click(function() { writeDoc(); });
});
