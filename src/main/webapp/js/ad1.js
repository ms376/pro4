import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDoc, getDocs, doc, deleteDoc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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


// view
function fetchDataAndFillTable() {
	const tableBody = document.getElementById('table-body');
	const boardsRef = collection(db, 'members');

	getDocs(boardsRef).then((querySnapshot) => {
		querySnapshot.forEach((doc) => {
			const data = doc.data();
			const { id, pw, name, email, sex, nickname, birth, address, detailAddress, rank, interest, phone } = data;
			const tableRow = `<tr>
                                 <td>${id}</td>
                                 <td>${pw}</td>
                                 <td>${name}</td>
                                 <td>${email}</td>
                                 <td>${sex}</td>
                                 <td>${nickname}</td>
                                 <td>${birth}</td>
                                 <td>${address}</td>
                                 <td>${detailAddress}</td>
                                 <td>${rank}</td>
                                 <td>${interest}</td>
                                 <td>${phone}</td>
                                 <td><button class="updp-button" data-docid="${doc.id}">정보변경</button><td>
                                 <td><button class="viewboards-button" data-docid="${doc.id}">작성글확인</button><td>
                                 <td><button class="delete-button" data-docid="${doc.id}">Delete</button></td>
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
		const updpButtons = document.querySelectorAll('.updp-button');
		updpButtons.forEach((button) => {
			button.addEventListener('click', async () => {
				const docId = button.getAttribute('data-docid');
				console.log(docId);
				const docRef = doc(db, 'members', docId);

				const docSnapshot = await getDoc(docRef);
				if (docSnapshot.exists()) {
					const data = {
						id: docSnapshot.data().id,
						pw: docSnapshot.data().pw,
						email: docSnapshot.data().email,
						nickname: docSnapshot.data().nickname,
						detailAddress: docSnapshot.data().detailAddress,
						sex: docSnapshot.data().sex,
						address: docSnapshot.data().address,
						detailAdress: docSnapshot.data().detailAdress,
						interest: docSnapshot.data().interest,
						phone: docSnapshot.data().phone,
						birth: docSnapshot.data().birth,
						rank: docSnapshot.data().rank,
						name: docSnapshot.data().name
					};
					// 가져온 값을 sessionStorage에 저장
					sessionStorage.setItem('selecteddata', JSON.stringify(data));

					// '/ad2' 페이지로 이동
					window.location.href = '/ad2';
				} else {
					console.log('해당 ID에 해당하는 문서를 찾을 수 없습니다.');
				}
			});
		});
		// HTML에서 '.viewboards-button' 클래스를 가진 버튼을 모두 선택합니다.
		const viewboardsButtons = document.querySelectorAll('.viewboards-button');

		// 각 버튼에 클릭 이벤트 리스너를 추가합니다.
		viewboardsButtons.forEach((button) => {
			button.addEventListener('click', async () => {
				// 버튼의 'data-docid' 속성을 통해 문서 ID를 가져옵니다.
				const docId = button.getAttribute('data-docid');
				console.log(docId);

				// Firestore 문서 참조를 생성합니다.
				const docRef = doc(db, 'members', docId);

				// Firestore에서 해당 문서를 가져옵니다.
				const docSnapshot = await getDoc(docRef);

				// 문서가 존재하는지 확인합니다.
				if (docSnapshot.exists()) {
					// 문서에서 'id' 필드 값을 가져옵니다.
					const idr = docSnapshot.data(); // 이 부분 수정됨
					console.log(idr.id);

						if (docSnapshot.exists()) {
					const data = {
						id: docSnapshot.data().id,
						author: docSnapshot.data().author,
						title: docSnapshot.data().title,
						content: docSnapshot.data().cotent
					};
						// 가져온 값을 sessionStorage에 저장
						sessionStorage.setItem('selectedId', JSON.stringify(data));

						// '/ad3' 페이지로 이동합니다.
						window.location.href = '/ad3';
						} else {
					console.log('해당 ID에 해당하는 문서를 찾을 수 없습니다.');
				}
				}
			});
		});

	});
}

fetchDataAndFillTable();

async function deleteDocument(docId) {
	try {
		await deleteDoc(doc(db, 'members', docId));
		console.log("성공적으로 삭제되었습니다.");
		window.location.href = "/ad1";
	} catch (error) {
		console.error("삭제 중 오류가 발생했습니다:");
	}
}

async function showDocumentFields(docId) {
	const docRef = doc(db, 'members', docId);
	const tableBody2 = document.getElementById('table-body2');

	try {
		const docSnap = await getDoc(docRef);
		if (docSnap.exists()) {
			const data = docSnap.data();
			const tableRow = `<tr>
                                 <td>${data.id}</td>
                                 <td>${data.pw}</td>
                                 <td>${data.name}</td>
                                 <td>${data.email}</td>
                                 <td>${data.sex}</td>
                                 <td>${data.nickname}</td>
                                 <td>${data.birth}</td>
                                 <td>${data.address}</td>
                                 <td>${data.detailAddress}</td>
                                 <td>${data.rank}</td>
                                 <td>${data.interest}</td>
                                 <td>${data.phone}</td>
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