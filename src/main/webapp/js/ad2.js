import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, query, where, getDocs, doc, updateDoc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

async function updateUserDoc() {
	var userData = sessionStorage.getItem("selecteddata");
	var user = JSON.parse(userData);
	var id = user.id;

	const q = query(collection(db, 'members'), where('id', '==', id));
	const querySnapshot = await getDocs(q);

	
		querySnapshot.forEach(async (userDoc) => {
		const userDocRef = doc(db, 'members', userDoc.id);
		
		// 사용자가 입력한 값 가져오기
		const newPw = document.getElementById("newpw").value.trim();
		const newEmail = document.getElementById("newemail").value.trim();
		const newNickname = document.getElementById("newnickname").value.trim();
		const newSex = document.getElementById("newsex").value.trim();
		const newAddress = document.getElementById("newaddr").value.trim();
		const newInterest = document.getElementById("newinterest").value.trim();
		const newPhone = document.getElementById("newphone").value.trim();
		const newBirth = document.getElementById("newbirth").value.trim();
		const newrank = document.getElementById("newrank").value.trim();
		const updatedData = {
			pw: newPw,
			email: newEmail,
			sex: newSex,
			nickname: newNickname,
			birth: newBirth,
			address: newAddress,
			detailAddress: document.getElementById("newaddrd").value.trim(),
			interest: newInterest,
			phone: newPhone,
			rank: newrank
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
function execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
					extraAddr = ' (' + extraAddr + ')';
				}
				// 조합된 참고항목을 해당 필드에 넣는다.
				document.getElementById("extraAddress").value = extraAddr;

			} else {
				document.getElementById("extraAddress").value = '';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('postcode').value = data.zonecode;
			document.getElementById("newaddr").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("newaddrd").focus();
		}
	}).open();
}

$(document).ready(function() {
	console.log(111);
	$('#updatepro').click(function() { updateUserDoc(); });
	$('#nadd').click(function() { execDaumPostcode(); });
});