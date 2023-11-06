import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs, setDoc, doc, serverTimestamp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

var firebaseConfig = {
  apiKey: "AIzaSyBsXDVO5_ewiC_lh01XW8TWwBJcdGWTDfI",
  authDomain: "java-project-ed311.firebaseapp.com",
  databaseURL: "https://java-project-ed311-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "java-project-ed311",
  storageBucket: "java-project-ed311.appspot.com",
  messagingSenderId: "945213480964",
  appId: "1:945213480964:web:7afa4ec5d9a3cb22085551"
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