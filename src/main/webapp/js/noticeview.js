import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, getDoc,doc, deleteDoc, updateDoc, } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

// view
async function showDocumentFields() {
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId'); 
    const docRef = doc(db, 'noticeboards', docId);
	
    try {
        const docSnap = await getDoc(docRef);
        if (docSnap.exists()) {
            const data = docSnap.data();
            var formattedDate = formatDate(data.date.toDate(), 'YYYY-MM-DD');
           
            var loggedInUser = JSON.parse(sessionStorage.getItem('loggedInUser'));
    		var userId = loggedInUser ? loggedInUser.id : null;
            
            const tableBody2 = document.getElementById('table-body2');
            const tableRow = `<table><tr>
                                 <td>${data.num}</td>
                                 <td>${data.id}</td>
                                 <td>${data.title}</td>
                                 <td>${data.content}</td>
                                 <td>${formattedDate}</td> 
                                 <td><button class="like-button" data-docid="${docId}">좋아요</button></td>
                                 <td>좋아요 수: <span id="like-count">${data.likes || 0}</span></td>
                                 <td id="count-cell">${data.count}</td> 
                                 <td><button class="delete-button" data-docid="${doc.id}">삭제</button></td>                     
                               	 <td><button class="edit-button" data-docid="${doc.id}">수정</button></td>
                               </tr></table>`;
            tableBody2.insertAdjacentHTML('beforeend', tableRow);
            
             // "좋아요" 버튼에 이벤트 리스너를 추가하여 좋아요 수를 업데이트합니다.
                const likeButton = document.querySelector('.like-button');
                likeButton.addEventListener('click', async () => {
					userData = sessionStorage.getItem("loggedInUser");
					const shouldLike = await checkSession2();
					if(shouldLike) {
						likePost(docId, userId);
					}   
                });

            // "삭제" 버튼에 이벤트 리스너를 추가하여 참여 동작을 수행합니다.
            const deleteButtons = document.querySelectorAll('.delete-button');
	        deleteButtons.forEach((button) => {
	            button.addEventListener('click', async () => {
					userData = sessionStorage.getItem("loggedInUser");
	                console.log("docId  " + docId);
	                const shouldDelete = await checkSession();
	                if(shouldDelete) {
						deleteDocument(docId);
					}
	            });
	        });
	        
	        const contentCells = document.querySelectorAll('.edit-button');
		    contentCells.forEach((cell) => {
		          cell.addEventListener('click', () => {
		              window.location.href = `/noticeeditboard?docId=${docId}`;
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

// 좋아요 기능 추가
async function likePost(docId, userId) {
    const docRef = doc(db, 'noticeboards', docId);
    
    try {
        const docSnap = await getDoc(docRef);
        if (docSnap.exists()) {
            const data = docSnap.data();
            const likedBy = data.likedBy || []; // 게시물에 대한 좋아요 목록

            if (!likedBy.includes(userId)) {
                // 사용자가 이 게시물에 좋아요를 누른 적이 없을 때
                likedBy.push(userId); // 사용자 ID를 목록에 추가
            } else {
                // 이미 좋아요를 눌렀던 사용자라면, 좋아요 취소
                const userIndex = likedBy.indexOf(userId);
                if (userIndex !== -1) {
                    likedBy.splice(userIndex, 1); // 사용자 ID를 목록에서 제거
                }
            }
            
            const updatedLikes = likedBy.length; // 좋아요 수는 목록의 길이에 해당
            // 'likes' 및 'likedBy' 필드를 업데이트
            await updateDoc(docRef, {
                likes: updatedLikes,
                likedBy: likedBy
            });

            // 좋아요 수 업데이트
            const likeCountSpan = document.getElementById('like-count');
            likeCountSpan.textContent = updatedLikes;

            // 좋아요 버튼 상태 업데이트
            const likeButton = document.querySelector('.like-button');
            if (likedBy.includes(userId)) {
                likeButton.textContent = '좋아요 취소';
            } else {
                likeButton.textContent = '좋아요';
            }
        } else {
            console.log("게시물을 찾을 수 없습니다.");
        }
    } catch (error) {
        console.error("좋아요 처리 중 오류 발생:", error);
    }
}


// '삭제' 버튼 클릭 이벤트 핸들러
async function deleteDocument(docId) {
    try {
		
		console.log("삭제할 문서 ID:", docId);
        const result= await deleteDoc(doc(db, 'noticeboards', docId));
        console.log("삭제 결과:", result);
        console.log("문서가 성공적으로 삭제되었습니다.");
        alert("삭제가 완료되었습니다.");
        window.location.href = "/noticeboard";
        return;
    } catch (error) {
        console.log("문서 삭제 중 오류가 발생했습니다:");
    }
}



// 날짜 변환
function formatDate(date) {
    const options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit' };
    return date.toLocaleDateString('ko-KR', options);
}

// 로그인만 체크
async function checkSession2() { 
    if(!userData) {
		alert("로그인 후 이용해주세요.");
		window.location.href = "/login"; // 로그인페이지 이동
		return false;
	}
	return true;
}
// 로그인 체크, 본인확인
async function checkSession() { 
    if(!userData) {
		alert("관리자만 삭제 가능합니다.");
		window.location.href = `/noticeviewboard?docId=${docId}`; // 로그인페이지 이동
		return;
	}
    
    var user = JSON.parse(userData);
    var id = user.id;
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId');
    
    try {
        const docSnap = await getDoc(doc(db, 'noticeboards', docId));
        if (docSnap.exists()) {
            const data = docSnap.data();
            if (data.id !== id) {
                alert("관리자만 삭제가능합니다.");
                window.location.href = `/noticeviewboard?docId=${docId}`;
                return false;
            }
            return true;
        } else {
            console.log("해당 ID에 해당하는 문서를 찾을 수 없습니다.");
       		return false;
        }
    } catch (error) {
        console.error("문서 가져오기 중 오류 발생:", error);
        return false; // 삭제 금지
    }
}

