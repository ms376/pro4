import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, doc, updateDoc, getDoc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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
var userData = sessionStorage.getItem("loggedInUser");

async function checkSession() { // 로그인 체크, 본인확인
    if(!userData) {
		alert("세션이 만료되었습니다. 다시 로그인해주세요.");
		window.location.href = "/login"; // 로그인페이지 이동
		return;
	}
    
    var user = JSON.parse(userData);
    var id = user.id;
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId');
    
    try {
        const docSnap = await getDoc(doc(db, 'reviewboards', docId));
        if (docSnap.exists()) {
            const data = docSnap.data();
            if (data.id !== id) {
                alert("본인만 수정 가능합니다.");
                window.location.href = `/reviewviewboard?docId=${docId}`;
            }
        } else {
            console.log("해당 ID에 해당하는 문서를 찾을 수 없습니다.");
        }
    } catch (error) {
        console.error("문서 가져오기 중 오류 발생:", error);
    }
}

async function editDocumentFields() {
	const params = new URLSearchParams(window.location.search);
	const docId = params.get('docId');
    const docRef = doc(db, 'reviewboards', docId);
    
    try {
        const docSnap = await getDoc(docRef);
        if (docSnap.exists()) {
            const data = docSnap.data();
            var date = data.date ? data.date.toDate() : null;
            var formattedDate = date ? formatDate(date) : "날짜 없음";
			
			const tableBody3 = document.getElementById('table-body3');
            // 기존 내용을 수정 가능한 필드로 대체합니다.
            const tableRow = `<tr>
            <td><select id="uadatedZone">
			    <option value="서울" ${data.zone === "서울" ? 'selected' : ''}>서울</option>
			    <option value="부산" ${data.zone === "부산" ? 'selected' : ''}>부산</option>
			    <option value="대구" ${data.zone === "대구" ? 'selected' : ''}>대구</option>
			    <option value="인천" ${data.zone === "인천" ? 'selected' : ''}>인천</option>
			    <option value="광주" ${data.zone === "광주" ? 'selected' : ''}>광주</option>
			    <option value="대전" ${data.zone === "대전" ? 'selected' : ''}>대전</option>
			    <option value="울산" ${data.zone === "울산" ? 'selected' : ''}>울산</option>
			    <option value="경기" ${data.zone === "경기" ? 'selected' : ''}>경기</option>
			    <option value="강원" ${data.zone === "강원" ? 'selected' : ''}>강원</option>
			    <option value="경북" ${data.zone === "경북" ? 'selected' : ''}>경북</option>
			    <option value="경남" ${data.zone === "경남" ? 'selected' : ''}>경남</option>
			    <option value="전북" ${data.zone === "전북" ? 'selected' : ''}>전북</option>
			    <option value="전남" ${data.zone === "전남" ? 'selected' : ''}>전남</option>
			    <option value="충북" ${data.zone === "충북" ? 'selected' : ''}>충북</option>
			    <option value="충남" ${data.zone === "충남" ? 'selected' : ''}>충남</option>
			    <option value="제주" ${data.zone === "제주" ? 'selected' : ''}>제주</option>
		    </select></td>
            <td><select id="uadatedInterest" value="${data.interest}>
            	<option value="스포츠" ${data.zone === "스포츠" ? 'selected' : ''}>스포츠</option>
			    <option value="예술활동" ${data.zone === "예술활동" ? 'selected' : ''}>예술활동</option>
			    <option value="봉사활동" ${data.zone === "봉사활동" ? 'selected' : ''}>봉사활동</option>
			    <option value="문화활동" ${data.zone === "문화활동" ? 'selected' : ''}>문화활동</option>
			    <option value="맛집탐험" ${data.zone === "맛집탐험" ? 'selected' : ''}>맛집탐험</option>
		    </select></td>
			<td><input type="text" id="updatedDname" value="${data.Dname}"></td>
		    <td id="userId">???</td>
		    <td><input type="text" id="updatedTitle" value="${data.title}"></td>
		    <td><input type="text" id="updatedContent" value="${data.content}"></td>
		    <td>${formattedDate}</td>
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
    const uadatedZone = document.getElementById('uadatedZone').value;
    const uadatedInterest = document.getElementById('uadatedInterest').value;
    const updatedDname = document.getElementById('updatedDname').value;
    const updatedTitle = document.getElementById('updatedTitle').value;
    const updatedContent = document.getElementById('updatedContent').value;

    const docRef = doc(db, 'reviewboards', docId);

    const updatedData = {
        zone: uadatedZone,
        interest: uadatedInterest,
        Dname: updatedDname,
        title: updatedTitle,
        content: updatedContent,
    };

    try {
        await updateDoc(docRef, updatedData);
        console.log('문서가 성공적으로 업데이트되었습니다.');
        alert("수정이 완료되었습니다.");
        window.location.href = `/reviewviewboard?docId=${docId}`;
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