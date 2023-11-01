import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

function fetchDataAndFillTable() {
    const tableBody = document.getElementById('table-body');
    const boardsRef = collection(db, 'boards');
    
    getDocs(boardsRef).then((querySnapshot) => {
        querySnapshot.forEach((doc) => {
            const data = doc.data();
			var formattedDate = formatDate(doc.data().date.toDate(), 'YYYY-MM-DD');
            const {num, id, title, content, count } = data;
            const tableRow = `<tr>
            					 <td>${num}</td>
                                 <td>${id}</td>
								 <td><a class="title-button" data-docid="${doc.id}">${title}</a></td>								 
								 <td>${content}</td>
                                 <td>${formattedDate}</td>
                                 <td>${count}</td>
                               </tr>`;
            tableBody.insertAdjacentHTML('beforeend', tableRow);
        });
        
         const titleCells = document.querySelectorAll('.title-button');
		 titleCells.forEach((cell) => {
		    cell.addEventListener('click', () => {
		    const docId = cell.getAttribute('data-docid');
		    window.location.href = `/viewboard?docId=${docId}`; // 클릭 시 viewboard.jsp로 이동합니다.
		    });
		});
        
    }).catch((error) => {
        console.error("Error fetching documents: ", error);
    });
}

fetchDataAndFillTable();



// 날짜 변환
	function formatDate(date) {
    	const options = { year: 'numeric', month: '2-digit', day: '2-digit'};
    	return date.toLocaleDateString('ko-KR', options);
	}
	
function checkSession() {
   document
						.addEventListener(
								"DOMContentLoaded",
							function() {
								var userData = sessionStorage
										.getItem("loggedInUser");
								// user 데이터가 존재하는지 확인합니다.
								if (userData) {
									// JSON 파싱을 수행합니다.
									var user = JSON.parse(userData);
										// user 객체에서 id와 pw을 가져옵니다.
									var id = user.id;
									

									// 가져온 id와 pw 값을 출력합니다.
									document.getElementById("userId").textContent = id;
									
								} else {
									console.log("세션 스토리지에서 user 데이터를 찾을 수 없습니다.");
								}
							});
							if(id == null)
							{
								alert("로그인 후 이용해주세요");
								return;
							} else {
								window.location.href = '/writeform';
							}
}	

$(document).ready(function() {
    checkSession();
});