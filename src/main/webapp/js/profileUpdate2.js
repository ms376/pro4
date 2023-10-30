import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, doc, deleteDoc, query, where, collection, getDocs } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

async function deleteDocument() {
	var userData = sessionStorage.getItem("loggedInUser");
	if (userData) {
		var user = JSON.parse(userData);
		const q = query(collection(db, 'members'), where('id', '==', user.id));
		const querySnapshot = await getDocs(q);
		if (!querySnapshot.empty) {
			// 찾은 문서 중에서 첫 번째 문서를 삭제합니다.
			const documentToDelete = querySnapshot.docs[0];
			try {
				await deleteDoc(documentToDelete.ref);
				console.log(user.id);
				console.log("문서가 성공적으로 삭제되었습니다.");
				 sessionStorage.clear();
				 alert("문서가 성공적으로 삭제되었습니다.");
				 window.location.href = '/prf';
			} catch (error) {
				console.log("문서 삭제 중 오류가 발생했습니다" + error);
			}
		} else {
			console.log("삭제할 데이터가 존재하지 않습니다.");
		}
	} else {
		console.log("삭제할 데이터가 존재하지 않습니다.");
	}
}

$(document).ready(function() {
	$('#de').click(function() {
		deleteDocument();
	});
});
