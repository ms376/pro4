import { initializeApp } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-app.js';
import { getFirestore, doc, updateDoc } from 'https://www.gstatic.com/firebasejs/10.4.0/firebase-firestore.js';

const firebaseConfig = {
  apiKey: "AIzaSyCYTzwY4INgoQAJ_e8ZdxlrOrJyIsb0iEA",
  authDomain: "pro4-3a50f.firebaseapp.com",
  databaseURL: "https://pro4-3a50f-default-rtdb.firebaseio.com",
  projectId: "pro4-3a50f",
  storageBucket: "pro4-3a50f.appspot.com",
  messagingSenderId: "307587646265",
  appId: "1:307587646265:web:1a1d9ab9129d2c2956dee8",
  measurementId: "G-LMXETWQJGT"
};

const app = initializeApp(firebaseConfig);
const db = getFirestore(app);
var userData = sessionStorage.getItem("loggedInUser");
var user = JSON.parse(userData);
var id = user.id;
document.getElementById("lid").textContent = id;

document.getElementById("updateButton").addEventListener("click", async function () {
  try {
    // Input field values
    const newpw = document.getElementById("newpw").value;
    const newNickname = document.getElementById("newnickname").value;
    const newAddress = document.getElementById("newaddr").value;
    const newDetailAddress = document.getElementById("newaddrd").value;
    const newBirth = document.getElementById("newbirth").value;
    const newInterest = document.getElementById("newinterest").value;
    const newEmail = document.getElementById("newemail").value;
    const newPhone = document.getElementById("newphone").value;
    const newSex = document.getElementById("newsex").value;

    // Replace 'USER_ID' with the actual user's ID

    // Reference to the user's document
    const userDocRef = doc(db, 'members', "lid");

    // Create an object with the updated data
    const updatedData = {
      pw: newpw,
      nickname: newNickname,
      address: newAddress,
      detailAddress: newDetailAddress,
      birth: newBirth,
      interest: newInterest,
      email: newEmail,
      phone: newPhone,
      sex: newSex
    };

    // Update the user's data in Firestore
    await updateDoc(userDocRef, updatedData, { merge: true });

    // Show a success message to the user
    alert("정보가 업데이트되었습니다.");
  } catch (error) {
    alert("정보 업데이트 중 오류가 발생했습니다.");
  }
});
