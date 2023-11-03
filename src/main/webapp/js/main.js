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

function fetchDataAndFillTable() {
	const tableBody = document.getElementById('table-body');
	const boardsRef = collection(db, 'boards');

	getDocs(boardsRef).then((querySnapshot) => {
		querySnapshot.forEach((doc) => {
			const data = doc.data();
			const { id, title,postdate } = data;
			const tableRow = `<tr>
                                 <td>${id}&nbsp;&nbsp;&nbsp;${title}</td>
                               </tr>`;
			tableBody.insertAdjacentHTML('beforeend', tableRow);
		});
	});
}

fetchDataAndFillTable();