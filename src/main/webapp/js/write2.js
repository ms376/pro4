import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs, setDoc, doc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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
var app = initializeApp(firebaseConfig);
var db = getFirestore(app);

async function writeDoc() {
	var id = $('#id').val();
	var title = $('#title').val();
	var content = $('#content').val();
	var author = $('#author').val();

	var postData = {
		id: id,
		title: title,
		content: content,
		author: author,
	};
	var timeElapsed = Date.now();
	var newRef = doc(db, 'boards', 'board' + timeElapsed);

	await setDoc(newRef, postData);
}

async function selectDoc() {
	$('#chatMessageArea').empty();

	const snapshot = await getDocs(collection(db, "boards"));
	snapshot.forEach((doc) => {
		var doc_id = doc.id;
		var data = doc.data();
		console.log(doc_id + " - " + data.title + " : " + data.content + " : " + data.author);
		appendMessage(data.id + " : " +data.title + " : " + data.content + " : " + data.author);
	});
}

function updateDoc() {
  var id = $('#id').val();
  var title = $('#title').val();
  var content = $('#content').val();
  var author = $('#author').val();

  // 아이디를 사용하여 해당 문서를 찾습니다.
  var docRef = doc(db, 'boards', id);

  // 업데이트할 데이터
  var updatedData = {
    title: title,
    content: content,
    author: author,
  };

  updateDoc(docRef, updatedData)
    .then(() => {
      console.log("게시물이 업데이트되었습니다.");
      // 업데이트 후에 필요한 작업 수행
      // 예: 다시 데이터를 가져와서 화면에 업데이트
    })
    .catch((error) => {
      console.error("게시물 업데이트 중 오류가 발생했습니다:", error);
    });
}

function viewDoc() {
  // 이걸 input받은 데이터값대입 시켜야함
  var id = $('#id').val();

  var docRef = doc(db, 'boards', id);

  getDoc(docRef)
    .then((docSnap) => {
      if (docSnap.exists()) {
        const data = docSnap.data();
        // 가져온 데이터를 화면에 표시
        $('#title').val(data.title);
        $('#content').val(data.content);
        $('#author').val(data.author);
      } else {
        console.log("해당 ID에 해당하는 게시물을 찾을 수 없습니다.");
      }
    })
    .catch((error) => {
      console.error("게시물 가져오기 중 오류 발생:", error);
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
	$('#write').click(function() { writeDoc(); });
	$('#select').click(function() { selectDoc(); });
	$('#update').click(function() { updateDoc(); });
	$('#view').click(function() { viewDoc(); });
	$('#delete').click(function() { remove(); });
});