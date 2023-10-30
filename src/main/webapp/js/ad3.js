import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDoc, getDocs, where, query, doc, deleteDoc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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


function fetchDataAndFillTable() {
	var userData = sessionStorage.getItem("selectedId");
	var user = JSON.parse(userData);
	var llid = user.id;
	const tableBody = document.getElementById('table-body');
	const boardsRef = query(collection(db, 'boards'), where('id', '==', llid));
	getDocs(boardsRef).then((querySnapshot) => {
		querySnapshot.forEach((doc) => {
			const data = doc.data();
			const { id,author,title,content} = data;
			const tableRow = `<tr>
                                 <td>${id}</td>
                                 <td>${author}</td>
                                 <td>${title}</td>
                                 <td>${content}</td>
                                 <td><button class="delete-button" data-docid="${doc.id}">글삭제하기</button></td>
                               </tr>`;
			tableBody.insertAdjacentHTML('beforeend', tableRow);
		});

		const titleCells = document.querySelectorAll('.title-button');
		titleCells.forEach((cell) => {
			cell.addEventListener('click', () => {
				const docId = cell.getAttribute('data-docid');
				showDocumentFields(docId);
			});
		});

		const deleteButtons = document.querySelectorAll('.delete-button');
		deleteButtons.forEach((button) => {
			button.addEventListener('click', () => {
				const docId = button.getAttribute('data-docid');
				deleteDocument(docId);
			});
		});
	});
}
fetchDataAndFillTable();

async function deleteDocument(docId) {
	try {
		await deleteDoc(doc(db, 'boards', docId));
		alert("성공적으로 삭제되었습니다.");
		window.location.href="/ad3";
	} catch (error) {
		console.log("삭제 중 오류가 발생했습니다:");
	}
}

async function showDocumentFields(docId) {
	const docRef = doc(db, 'boards', docId);
	const tableBody2 = document.getElementById('table-body2');

	try {
		const docSnap = await getDoc(docRef);
		if (docSnap.exists()) {
			const data = docSnap.data();
			const tableRow = `<tr>
                                 <td>${id}</td>
                                 <td>${author}</td>
                                 <td>${title}</td>
                                 <td>${content}</td>
                               </tr>`;
			tableBody2.insertAdjacentHTML('beforeend', tableRow);

			console.log(data);
		} else {
			console.log("해당 ID에 해당하는 문서를 찾을 수 없습니다.");
		}
	} catch (error) {
		console.error("문서 가져오기 중 오류 발생:", error);
	}
}