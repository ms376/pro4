import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDoc, getDocs, setDoc, doc,deleteDoc, serverTimestamp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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
            const { id, pw, name, email, sex, nickname, birth, address, detailaddress, rank, interest, phone} = data;
            const tableRow = `<tr>
                                 <td>${id}</td>
                                 <td>${pw}</td>
                                 <td>${name}</td>
                                 <td>${email}</td>
                                 <td>${sex}}</td>
                                 <td>${nickname}</td>
                                 <td>${birth}</td>
                                 <td>${address}</td>
                                 <td>${detailaddress}</td>
                                 <td>${rank}</td>
                                 <td>${interest}</td>
                                 <td>${phone}</td>
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
    }).catch((error) => {
        console.error("Error fetching documents: ", error);
    });
}

fetchDataAndFillTable();

async function deleteDocument(docId) {
    try {
        await deleteDoc(doc(db, 'members', docId));
        console.log("성공적으로 삭제되었습니다.");
        window.location.href="/ad";
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
                                 <td>${data.sex}}</td>
                                 <td>${data.nickname}</td>
                                 <td>${data.birth}</td>
                                 <td>${data.address}</td>
                                 <td>${data.detailaddress}</td>
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

$(document).ready(function() {
   console.log(111);
   $('#write').click(function() { writeDoc(); });
   $('#delete').click(function() { remove(); });
});