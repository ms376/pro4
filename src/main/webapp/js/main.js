import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

function fetchDataAndFillTable(tableId, collectionName) {
    const tableBody = document.getElementById(tableId); // tableId에 해당하는 요소를 찾음
    const boardsRef = collection(db, collectionName);

    getDocs(boardsRef).then((querySnapshot) => {
        tableBody.innerHTML = ''; // 기존 내용을 초기화
        querySnapshot.forEach((doc) => {
            const data = doc.data();
            const { id, title, postdate } = data;
            const tableRow = `<tr>
                                 <td>${id}&nbsp;&nbsp;&nbsp;${title}</td>
                               </tr>`;
            tableBody.insertAdjacentHTML('beforeend', tableRow);
        });
    });
}

fetchDataAndFillTable('table-body', 'boards');
fetchDataAndFillTable('table-body2', 'dongboards');
fetchDataAndFillTable('table-body3', 'freeboards');
fetchDataAndFillTable('table-body4', 'reviewboards');