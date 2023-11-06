import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, doc, updateDoc, getDoc, } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

var firebaseConfig = {
  apiKey: "AIzaSyBsXDVO5_ewiC_lh01XW8TWwBJcdGWTDfI",
  authDomain: "java-project-ed311.firebaseapp.com",
  databaseURL: "https://java-project-ed311-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "java-project-ed311",
  storageBucket: "java-project-ed311.appspot.com",
  messagingSenderId: "945213480964",
  appId: "1:945213480964:web:7afa4ec5d9a3cb22085551"
};
var app = initializeApp(firebaseConfig);
var db = getFirestore(app);

var userData = sessionStorage.getItem('loggedInUser'); // 전역 변수에 할당
const params = new URLSearchParams(window.location.search);
const docId = params.get('docId');

async function checkSession() { 	
    if(!userData) {
		alert("관리자만 수정 가능합니다.");
		window.location.href = `/noticeviewboard?docId=${docId}`;
		return;
	}
	var user = JSON.parse(userData);
    var id = user.id;
    if(id != 'admin') {
		alert("관리자만 수정 가능합니다.");
		window.location.href = `/noticeviewboard?docId=${docId}`;
		return;
	}
}
checkSession();


async function editDocumentFields() {
	
    const docRef = doc(db, 'noticeboards', docId);
    
    try {
        const docSnap = await getDoc(docRef);
        if (docSnap.exists()) {
            const data = docSnap.data();
            var date = data.date ? data.date.toDate() : null;
            var formattedDate = date ? formatDate(date) : "날짜 없음";
			
			const tableBody3 = document.getElementById('table-body3');
            // 기존 내용을 수정 가능한 필드로 대체합니다.
            const tableRow = `<tr>
                <td id="userId">${data.id}</td>
                <td><input type="text" id="updatedTitle" value="${data.title}"></td>
                <td><input type="text" id="updatedContent" value="${data.content}"></td>
                <td><${formattedDate}></td>
                <td><button id="saveButton" data-docid="${docId}">저장</button></td>
            </tr>`;
            tableBody3.insertAdjacentHTML('beforeend', tableRow);

            // "저장" 버튼에 이벤트 리스너를 추가하여 수정 내용을 저장합니다.
            const saveButton = document.getElementById('saveButton');
            saveButton.addEventListener('click', () => {
                saveUpdatedDoc(docId);
            });
        } else {
            console.log("해당 ID에 해당하는 문서를 찾을 수 없습니다.");
        }
    } catch (error) {
        console.error("문서 가져오기 중 오류 발생:", error);
    }
}

editDocumentFields();

async function saveUpdatedDoc(docId) {
    const updatedTitle = document.getElementById('updatedTitle').value;
    const updatedContent = document.getElementById('updatedContent').value;

    const docRef = doc(db, 'noticeboards', docId);

    const updatedData = {
        title: updatedTitle,
        content: updatedContent,
    };

    try {
        await updateDoc(docRef, updatedData);
        alert("공지사항 수정이 완료되었습니다.");
        window.location.href = `/noticeviewboard?docId=${docId}`;
    } catch (error) {
        console.error('문서 업데이트 중 오류가 발생했습니다:', error);
    }
}

function formatDate(date) {
    const options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit' };
    return date.toLocaleDateString('ko-KR', options);
}

document.addEventListener("DOMContentLoaded", function() {
    checkSession();
});