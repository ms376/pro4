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
	var email = $('#email').val();
	var pwd = $('#pwd').val();

	var postData = {
		email: email,
		pw: pwd
	};
	var timeElapsed = Date.now();
	var newRef = doc(db, 'members', 'member' + timeElapsed);

	await setDoc(newRef, postData);
}

async function selectDoc() {
	$('#chatMessageArea').empty();

	const snapshot = await getDocs(collection(db, "members"));
	snapshot.forEach((doc) => {
		var doc_id = doc.id;
		var data = doc.data();
		console.log(doc_id + " - " + data.email + " : " + data.pw);
		appendMessage(data.email + " : " + data.pw);
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
	$('#select').click(function() { selectDoc(); });
	$('#write').click(function() { writeDoc(); });
});