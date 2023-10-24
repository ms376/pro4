import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, query, where, getDocs, doc, updateDoc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

async function updateUserDoc() {
	var userData = sessionStorage.getItem("loggedInUser");
	var user = JSON.parse(userData);
	var id = user.id;

	const q = query(collection(db, 'members'), where('id', '==', id));
	const querySnapshot = await getDocs(q);

	querySnapshot.forEach(async (userDoc) => {
		const userDocRef = doc(db, 'members', userDoc.id);

		const updatedData = {
			pw: document.getElementById("newpw").value,
			email: document.getElementById("newemail").value,
			sex: document.getElementById("newsex").value,
			nickname: document.getElementById("newnickname").value,
			birth: document.getElementById("newbirth").value,
			address: document.getElementById("newaddr").value,
			detailAddress: document.getElementById("newaddrd").value,
			interest: document.getElementById("newinterest").value,
			phone: document.getElementById("newphone").value
		};

		try {
			await updateDoc(userDocRef, updatedData);
			console.log('문서가 성공적으로 업데이트되었습니다.');
			alert("성공적으로 변경되었습니다. 다시 로그인 해주세요");
			sessionStorage.clear();
			window.location.href = '/';
		} catch (error) {
			console.error('문서 업데이트 중 오류가 발생했습니다:', error);
		}
	});
}

$(document).ready(function() {
	console.log(111);
	$('#updatepro').click(function() { updateUserDoc(); });
});