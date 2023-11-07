import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, collection, getDocs, query, orderBy, where } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

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

function generatePageNumbers(currentPage, totalItemCount, itemsPerPage) {
    const totalPages = Math.ceil(totalItemCount / itemsPerPage);
    const displayPageNum = 5; // 페이징에 표시할 페이지 번호 개수

    const pageNumbers = [];

    if (totalPages <= displayPageNum) {
        for (let i = 1; i <= totalPages; i++) {
            pageNumbers.push(i);
        }
    } else {
        const halfDisplay = Math.floor(displayPageNum / 2);

        if (currentPage <= halfDisplay) {
            for (let i = 1; i <= displayPageNum; i++) {
                pageNumbers.push(i);
            }
        } else if (currentPage >= totalPages - halfDisplay) {
            for (let i = totalPages - displayPageNum + 1; i <= totalPages; i++) {
                pageNumbers.push(i);
            }
        } else {
            for (let i = currentPage - halfDisplay; i <= currentPage + halfDisplay; i++) {
                pageNumbers.push(i);
            }
        }
    }

    const pageNumbersContainer = document.getElementById('pageNumbers');
    pageNumbersContainer.innerHTML = '';

    pageNumbers.forEach((pageNumber) => {
        const button = document.createElement('button');
        button.textContent = pageNumber;

        // 페이지 이동을 처리하기 위한 이벤트 리스너를 추가합니다.
        button.addEventListener('click', () => {
            fetchDataAndFillTable(pageNumber);
        });

        pageNumbersContainer.appendChild(button);
    });

    return pageNumbers;
}

var totalItemCount = 0;


function fetchDataAndFillTable(currentPage = 1, itemsPerPage = 10) {
   let startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;

    // 이전 버튼과 다음 버튼을 가져오고 이벤트 리스너를 추가합니다.
   var prevButton = document.getElementById('prevPage');
   var nextButton = document.getElementById('nextPage');
   var pageNumbersContainer = document.getElementById('pageNumbers');
   
    prevButton.addEventListener('click', () => {
        if (currentPage > 1) {
            currentPage--;
            startIndex = (currentPage - 1) * itemsPerPage;
            fetchDataAndFillTable(currentPage);
        }
    });

    nextButton.addEventListener('click', () => {
        var totalPages = Math.ceil(totalItemCount / itemsPerPage);
        if (currentPage < totalPages) {
            currentPage++;
            startIndex = (currentPage - 1) * itemsPerPage;
            fetchDataAndFillTable(currentPage);
        }
    });

    const pageNumbers = generatePageNumbers(currentPage, totalItemCount, itemsPerPage);
    pageNumbersContainer.innerHTML = '';

    pageNumbers.forEach((pageNumber) => {
        const button = document.createElement('button');
        button.textContent = pageNumber;

        // 페이지 이동을 처리하기 위한 이벤트 리스너를 추가합니다.
        button.addEventListener('click', () => {
            currentPage = pageNumber;
            startIndex = (currentPage - 1) * itemsPerPage;
            fetchDataAndFillTable(); // 새 페이지에 대한 데이터를 가져옵니다.
        });

        pageNumbersContainer.appendChild(button);
    });

	const tableBody = document.getElementById('table-body');
    const boardsRef = collection(db, 'noticeboards');

    
    getDocs(query(collection(db, 'noticeboards'), orderBy('num', 'desc')))
        .then((querySnapshot) => {
			totalItemCount = querySnapshot.size;
	        let index = 1;
		
			tableBody.innerHTML = '';
	
            querySnapshot.forEach((doc) => {
				if (index >= startIndex + 1 && index <= endIndex) {

                const data = doc.data();
                var formattedDate = formatDate(data.date.toDate(), 'YYYY-MM-DD');
                const {num, id, title, content, count } = data;
                const isHot = isWithin72Hours(data.date.toDate());
                const tableRow = `<table><tr>
                                     <td>${isHot ? '<span class="new_icon">N</span> ' : ''}</td>
                                     <td>${num}</td>
                                     <td>${id}</td>
                                     <td><a class="title-button" data-docid="${doc.id}">${title}</a></td>                                 
                                     <td>${content}</td>
                                     <td>${formattedDate}</td>
                                     <td>${count}</td>
                                   </tr></table>                    
                                   `;
                tableBody.insertAdjacentHTML('beforeend', tableRow);
            }
         	index++;   
         });
         generatePageNumbers(currentPage, totalItemCount, itemsPerPage);
        
         const titleCells = document.querySelectorAll('.title-button');
		 titleCells.forEach((cell) => {
		    cell.addEventListener('click', () => {
		    const docId = cell.getAttribute('data-docid');
		    window.location.href = `/noticeviewboard?docId=${docId}`; // 클릭 시 viewboard.jsp로 이동합니다.
		    });
		});
        
    }).catch((error) => {
        console.error("Error fetching documents: ", error);
    });
}

function isWithin72Hours(postDate) {
    if (!postDate) {
        return false;
    }

    const currentTime = new Date();
    const twelveHoursAgo = new Date(currentTime - 72 * 60 * 60 * 1000); // 12시간 전 시간 계산
    return postDate >= twelveHoursAgo;
}



   

fetchDataAndFillTable();

function performSearch() {
    const searchType = document.querySelector('select').value;
    const tableBody = document.getElementById('table-body');
    const boardsRef = collection(db, 'noticeboards');
    const searchInput = document.getElementById('searchInput').value;
    const searchButton = document.getElementById('searchButton');

    let queryField; // Firestore 쿼리에서 검색할 필드
    let index = 1;

    if (searchType === '제목') {
        queryField = 'title';
    } else if (searchType === '내용') {
        queryField = 'content';
    } 

     // 검색 쿼리 설정
    const searchRef = query(boardsRef, where(queryField, '==', searchInput));

    
    getDocs(searchRef)
        .then((querySnapshot) => {
			index = 1;
			tableBody.innerHTML = '';
            querySnapshot.forEach((doc) => {
                const data = doc.data();
                var formattedDate = formatDate(data.date.toDate(), 'YYYY-MM-DD');
                const {num, id, title, content, count } = data;
                const isHot = isWithin72Hours(data.date.toDate());
                const tableRow = `<table><tr>
                                     <td>${isHot ? '<span class="new_icon">N</span> ' : ''}</td>
                                     <td>${num}</td>
                                     <td>${id}</td>
                                     <td><a class="title-button" data-docid="${doc.id}">${title}</a></td>                                 
                                     <td>${content}</td>
                                     <td>${formattedDate}</td>
                                     <td>${count}</td>
                                   </tr></table>                    
                                   `;
                tableBody.insertAdjacentHTML('beforeend', tableRow);
            });
	
			 const searchButton = document.getElementById('searchButton');
	           searchButton.addEventListener('click', () => {
	               const searchQuery = document.getElementById('searchInput').value;
	               performSearch(searchQuery);
	           });
				                   
            const titleCells = document.querySelectorAll('.title-button');
           titleCells.forEach((cell) => {
               cell.addEventListener('click', () => {
                   const docId = cell.getAttribute('data-docid');
                   window.location.href = `/noticeviewboard?docId=${docId}`;
               });
           });
        })
        .catch((error) => {
            console.error("검색 중 오류 발생: ", error);
        });
	}

// 날짜 변환
	function formatDate(date) {
    	const options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit'};
    	return date.toLocaleDateString('ko-KR', options);
	}
	
$(document).ready(function() {
	if (searchInput && searchButton) {
        searchButton.addEventListener('click', () => {
            const searchQuery = searchInput.value;
            performSearch(searchQuery);
        });
    }
});

	