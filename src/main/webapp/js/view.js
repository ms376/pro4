import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, getDoc, doc, deleteDoc, updateDoc} from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

async function showDocumentFields() {
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId'); // Get the docId from URL query parameters
    const docRef = doc(db, 'boards', docId);

    try {
        const docSnap = await getDoc(docRef);
        if (docSnap.exists()) {
            const data = docSnap.data();
            var formattedDate = formatDate(data.date.toDate(), 'YYYY-MM-DD');
            
            const tableBody2 = document.getElementById('table-body2');
            const tableRow = `<tr>
                                 <td>${data.num}</td>
                                 <td>${data.id}</td>
                                 <td>${data.title}</td>
                                 <td>${data.content}</td>
                                 <td>${formattedDate}</td> 
                                 <td id="count-cell">${data.count}</td> 
                                 <td><button class="delete-button" data-docid="${doc.id}">삭제</button></td>                     
                               	 <td><button class="edit-button" data-docid="${doc.id}">수정</button></td>
                               </tr>`;
            tableBody2.insertAdjacentHTML('beforeend', tableRow);
            
            const deleteButtons = document.querySelectorAll('.delete-button');
	        deleteButtons.forEach((button) => {
	            button.addEventListener('click', () => {
	                console.log("docId  " + docId);
	                deleteDocument(docId);
	            });
	        });
	        
	        const contentCells = document.querySelectorAll('.edit-button');
		    contentCells.forEach((cell) => {
		          cell.addEventListener('click', () => {
		              window.location.href = `/editboard?docId=${docId}`;
		              
		          });
		      });

            const updatedCount = data.count + 1;
            await updateDoc(docRef, { count: updatedCount });
            console.log("조회수가 증가했습니다. 현재 조회수: ", updatedCount);

            // 조회수를 화면에 업데이트합니다.
            const countCell = document.getElementById('count-cell');
            countCell.innerText = updatedCount;
            
        } else {
            console.log("해당 ID에 해당하는 문서를 찾을 수 없습니다.");
        }
    } catch (error) {
        console.error("문서 가져오기 중 오류 발생:", error);
    }
}

showDocumentFields();

// 문서 삭제
async function deleteDocument(docId) {
    try {
		console.log("삭제할 문서 ID:", docId);
        const result= await deleteDoc(doc(db, 'boards', docId));
        console.log("삭제 결과:", result);
        console.log("문서가 성공적으로 삭제되었습니다.");
        alert("삭제가 완료되었습니다.");
        window.location.href = "/free";
        return;
    } catch (error) {
        console.log("문서 삭제 중 오류가 발생했습니다:");
    }
}



// 날짜 변환
function formatDate(date) {
    const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
    return date.toLocaleDateString('ko-KR', options);
}
