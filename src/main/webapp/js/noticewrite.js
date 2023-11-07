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
		alert("관리자만 이용 가능합니다.");
		window.location.href = "/noticeboard";
		return;
	}
	var user = JSON.parse(userData);
    var id = user.id;
    if(id != 'admin') {
		alert("관리자만 이용 가능합니다.");
		window.location.href = "/noticeboard";
		return;
	}
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
  var title = $('#title').val() 
  var content = $('#content').val()  
  var timestamp = serverTimestamp();
  var count = 0;
     
  
  if (!title) {
		alert("제목를 입력해주세요.");
		return;
	}
	
  if (!content) {
		alert("내용를 입력해주세요.");
		return;
	}	
  
  
	try {
    const querySnapshot = await getDocs(collection(db, 'noticeboards'));
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
		id: id,
		title: title,
		content: content,
		date: timestamp,
		num: num,
		count: count
	};
	var timeElapsed = Date.now();
	var newRef = doc(db, 'noticeboards', 'board' + timeElapsed);

	await setDoc(newRef, postData);
	alert("공지사항 작성이 완료되었습니다.");
	window.location.href="/noticeboard";
}
$(document).ready(function() {
	$('#write').click(function() { writeDoc(); });
});
