import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs, setDoc, doc, where, query } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

const emailForm = document.getElementById('emailForm');
const emailInput = document.getElementById('emailInput');
const resultDiv = document.getElementById('result');

emailForm.addEventListener('submit', async (e) => {
	e.preventDefault();

	const email = emailInput.value;

	// "members" 컬렉션에 대한 참조
	const membersCollection = collection(db, 'members');

	// 일치하는 이메일을 가진 문서를 찾기 위한 쿼리 생성
	const query1 = query(membersCollection, where('email', '==', email));

	try {
		const querySnapshot = await getDocs(query1);
		if (!querySnapshot.empty) {
			querySnapshot.forEach((doc) => {
				const data = doc.data();
				const id = data.id;
				const pw = data.pw;
				resultDiv.innerHTML = `ID: ${id}, PW: ${pw}`;
			});
		} else {
			resultDiv.innerHTML = '일치하는 이메일이 없습니다.';
		}
	} catch (error) {
		console.error('이메일 검색 중 오류 발생:', error);
		resultDiv.innerHTML = '이메일 검색 중 오류 발생.';
	}
});

