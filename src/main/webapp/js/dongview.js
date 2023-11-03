import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, addDoc, getDoc, getDocs, doc, deleteDoc, updateDoc, query, orderBy } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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
var userId = userData ? JSON.parse(userData).id : null;


async function showComments() {
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId');
    const commentsRef = collection(db, 'dongboards', docId, 'comments');
    const querySnapshot = await getDocs(query(commentsRef, orderBy('date', 'asc')));


	const tableBody2 = document.getElementById('comments-table');
    tableBody2.innerHTML = ''; // 기존 댓글 초기화


    querySnapshot.forEach((doc) => {
        const comment = doc.data();
        const formattedDate = formatDate(comment.date.toDate(), 'YYYY-MM-DD');
        const commentstable =`<tr>
        					  <td>${comment.user}</td>
                              <td>${comment.content}</td>
                              <td>${formattedDate}</td>
                              <td><button class="delete-comment-button" data-commentid="${doc.id}">삭제</button></td>
                              </tr>
                              `;
        tableBody2.insertAdjacentHTML('beforeend', commentstable);
    });
		// 삭제 버튼에 이벤트 리스너 추가
	const deleteCommentButtons = document.querySelectorAll('.delete-comment-button');
	deleteCommentButtons.forEach((button) => {
	    button.addEventListener('click', async () => {
	        const commentId = button.getAttribute('data-commentid');
	        const shouldDelete = await checkCommentOwnership(commentId);
	        if (shouldDelete) {
	            deleteComment(docId, commentId);
	        }
	    });
	});
}
// 댓글 소유권 확인
async function checkCommentOwnership(commentId) {
	const params = new URLSearchParams(window.location.search);
	const docId = params.get('docId');
    const commentRef = doc(db, 'dongboards', docId, 'comments', commentId);
    try {
        const commentSnapshot = await getDoc(commentRef);
        if (commentSnapshot.exists()) {
            const commentData = commentSnapshot.data();
            if (commentData.user === userId) {
                return true;
            } else {
                alert('본인의 댓글만 삭제할 수 있습니다.');
                return false;
            }
        } else {
            console.log('해당 ID에 해당하는 댓글을 찾을 수 없습니다.');
            return false;
        }
    } catch (error) {
        console.error('댓글 소유권 확인 중 오류가 발생했습니다:', error);
        return false;
    }
}

// 댓글 삭제
async function deleteComment(docId, commentId) {
    try {
        await deleteDoc(doc(db, 'dongboards', docId, 'comments', commentId));
        alert('댓글이 성공적으로 삭제되었습니다.');
        // 댓글을 삭제한 후 댓글 표시 함수 호출
        showComments();
    } catch (error) {
        console.error('댓글 삭제 중 오류가 발생했습니다:', error);
    }
}

// view
async function showDocumentFields() {
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId'); 
    const docRef = doc(db, 'dongboards', docId);
	
    try {
        const docSnap = await getDoc(docRef);
        if (docSnap.exists()) {
            const data = docSnap.data();
            var formattedDate = formatDate(data.date.toDate(), 'YYYY-MM-DD');
           
            var loggedInUser = JSON.parse(sessionStorage.getItem('loggedInUser'));
    		var userId = loggedInUser ? loggedInUser.id : null;
            const isUserJoined = data.participants && data.participants.includes(userId);
            
            const tableBody2 = document.getElementById('table-body2');
            const tableRow = `<table><tr>
                                 <td>${data.num}</td>
                                 <td>${data.id}</td>
                                 <td>${data.title}</td>
                                 <td>${data.content}</td>
                                 <td>${formattedDate}</td> 
                                 <td><button class="like-button" data-docid="${docId}">좋아요</button></td>
                                 <td>좋아요 수: <span id="like-count">${data.likes || 0}</span></td>
                                 <td><button class="join-button" data-docid="${doc.id}">${isUserJoined ? userId : '참여'}</button></td>
                    			 <td>참여 목록: <span id="participants-list">${data.participants ? data.participants.join(', ') : '참여한 사용자 없음'}</span></td>
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

			 // "참여" 버튼에 이벤트 리스너를 추가하여 참여 동작을 수행합니다.
                const joinButton = document.querySelector('.join-button');
                joinButton.addEventListener('click', async() => {
                    userData = sessionStorage.getItem("loggedInUser");
					const shouldJoin = await checkSession2();
                    if(shouldJoin) {
						joinEvent(docId, userId);
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
		              window.location.href = `/dongeditboard?docId=${docId}`;
		              
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
    showComments();
}

showDocumentFields();

// 좋아요 기능 추가
async function likePost(docId, userId) {
    const docRef = doc(db, 'dongboards', docId);
    
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



// '참여' 버튼 클릭 이벤트 핸들러
async function joinEvent(docId, userId) {
    const docRef = doc(db, 'dongboards', docId);

    try {
        const docSnap = await getDoc(docRef);
        if (docSnap.exists()) {
            const data = docSnap.data();
            const participants = data.participants || [];

            if (!participants.includes(userId)) {
                // 사용자가 이 게시물에 참여한 적이 없을 때
                participants.push(userId);

                // 'participants' 필드를 업데이트
                await updateDoc(docRef, {
                    participants: participants
                });

                // 참여 목록 업데이트 및 표시
                updateParticipantsList(docId, participants);
                
                // '참여' 버튼 텍스트를 '참여 취소'로 변경
                const joinButton = document.querySelector('.join-button');
                joinButton.textContent = '참여 취소';
            } else {
                // 이미 참여한 사용자라면, 참여 취소
                const userIndex = participants.indexOf(userId);
                if (userIndex !== -1) {
                    participants.splice(userIndex, 1);

                    // 'participants' 필드를 업데이트
                    await updateDoc(docRef, {
                        participants: participants
                    });

                    // 참여 목록 업데이트 및 표시
                    updateParticipantsList(docId, participants);
                    
                    // '참여' 버튼 텍스트를 '참여'로 변경
                    const joinButton = document.querySelector('.join-button');
                    joinButton.textContent = '참여';
                }
            }
        } else {
            console.log("게시물을 찾을 수 없습니다.");
        }
    } catch (error) {
        console.error("참여 처리 중 오류 발생:", error);
    }
}

// '참여' 목록 표시
function updateParticipantsList(docId, participants) {
    const docRef = doc(db, 'dongboards', docId);
    const participantsListElement = document.getElementById('participants-list');

    getDoc(docRef).then((docSnap) => {
        if (docSnap.exists()) {
            const data = docSnap.data();
            const participants = data.participants || [];

            // 참여 목록을 문자열로 만듭니다.
          const participantsString = participants.length > 0 ? participants.join(', ') : '참여한 사용자 없음';
      
          participantsListElement.textContent = participantsString;
      } else {
            console.log("게시물을 찾을 수 없습니다.");
        }
    });
}

// '삭제' 버튼 클릭 이벤트 핸들러
async function deleteDocument(docId) {
    try {
		console.log("삭제할 문서 ID:", docId);
        const result= await deleteDoc(doc(db, 'dongboards', docId));
        console.log("삭제 결과:", result);
        console.log("문서가 성공적으로 삭제되었습니다.");
        alert("삭제가 완료되었습니다.");
        window.location.href = "/freeboard";
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
		alert("로그인 후 이용해주세요.");
		window.location.href = "/login"; // 로그인페이지 이동
		return;
	}
    
    var user = JSON.parse(userData);
    var id = user.id;
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId');
    
    try {
        const docSnap = await getDoc(doc(db, 'dongboards', docId));
        if (docSnap.exists()) {
            const data = docSnap.data();
            if (data.id !== id) {
                alert("본인만 삭제 가능합니다.");
                window.location.href = `/dongviewboard?docId=${docId}`;
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

// 댓글 추가 함수
async function addComment(commentInput) {
    const params = new URLSearchParams(window.location.search);
    const docId = params.get('docId');
    const loggedInUser = JSON.parse(sessionStorage.getItem('loggedInUser'));
    const user = loggedInUser ? loggedInUser : { id: 'Anonymous' }; // 비로그인 사용자의 경우 'Anonymous'로 설정
    
    if (commentInput) {
		
        const commentData = {
            content: commentInput,
            date: new Date(),
            user: user.id
        };
        

        try {
            const commentsRef = collection(db, 'dongboards', docId, 'comments');
            await addDoc(commentsRef, commentData);
            alert("댓글 작성이 완료되었습니다.");
            // 댓글을 추가한 후 댓글 표시 함수 호출
            showComments();
        } catch (error) {
            console.error('댓글 추가 중 오류가 발생했습니다:', error);
        }
    } else {
        console.error('유효하지 않은 댓글입니다.');
    }
}



$(document).ready(function() {
    $('#addCommentBtn').click(function() { 
        const commentInput = $('#commentInput').val(); // 입력란의 값을 가져옵니다.
			 if (commentInput.trim() === '') {
            alert('댓글 내용을 입력해주세요.');
            return;
        	}       
        checkSession2().then((shouldAddComment) => {
            if (shouldAddComment) {
                addComment(commentInput); // addComment 함수로 전달합니다.
            }
        });
    });
});
