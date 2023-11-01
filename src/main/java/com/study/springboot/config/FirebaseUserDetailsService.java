package com.study.springboot.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.CollectionReference;
import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.Query;
import com.google.cloud.firestore.QueryDocumentSnapshot;
import com.google.cloud.firestore.QuerySnapshot;
import com.google.firebase.FirebaseApp;
import com.google.firebase.cloud.FirestoreClient;


public class FirebaseUserDetailsService implements UserDetailsService {
	@Autowired
	FirebaseInitializer firebase;
	@Autowired
	public PasswordEncoder passwordEncoder;
	@Override
	public UserDetails loadUserByUsername(String username) {
		firebase.initializeFirebaseApp();
		
		try {
//			DocumentReference mm = FirestoreClient.getFirestore().collection("members")
//				    .whereEqualTo("id", username) // id 필드의 값이 username과 일치하는 문서 검색
//				    .get()
//				    .get()
//				    .getDocuments()
//				    .get(0).getReference();
			// Firebase Admin SDK를 사용하여 Firestore에 연결
			
			// Firebase 앱 가져오기
			FirebaseApp firebaseApp = FirebaseApp.getInstance();
			// Firestore 클라이언트 초기화
			Firestore db = FirestoreClient.getFirestore(firebaseApp);

			// "members" 컬렉션 참조
			CollectionReference membersCollection = db.collection("members");

			// "username" 값이 필드 "id"의 값과 동일한 문서를 검색하는 쿼리
			Query query = membersCollection.whereEqualTo("id", username);

			// 쿼리 실행
			ApiFuture<QuerySnapshot> querySnapshot = query.get();
			QueryDocumentSnapshot document = querySnapshot.get().getDocuments().get(0);

			// 해당 문서에 대한 DocumentReference 가져오기
			DocumentReference docRef = document.getReference();
			System.out.println(docRef);
//			DocumentReference docRef = FirestoreClient.getFirestore().collection("members").document(username);

			// Firestore 문서 가져오기
			DocumentSnapshot doc = docRef.get().get();

			if (doc.exists()) {
				// Firestore에서 사용자 정보를 조회하고 UserDetails 객체로 변환
				String pw = doc.getString("pw");
				String rank = doc.getString("rank");
				String id = doc.getString("id");
				System.out.println(id);
				System.out.println(rank);
				System.out.println(pw);

				// rank 값에 따라 권한 부여
				List<String> roles = new ArrayList<>();
				if ("1".equals(rank)) {
					 UserDetails user = User.builder()
				        		.username(id)
				        		.password(passwordEncoder().encode(pw))
				        		.roles("USER")	// ROLE_USER 에서 ROLE_ 자동으로 붙는다.
				        		.build();
					 return user;
//					roles.add("USER");
				} else if ("2".equals(rank)) {
					UserDetails admin = User.builder()
			        		.username(id)
			        		.password(passwordEncoder().encode(pw))
			        		.roles("USER","ADMIN")	
			        		.build();
					return admin;
//					roles.add("ADMIN");
//					return new UserDetails(admin);
				}
				
				System.out.println(roles);
				// UserDetails 객체 생성
				return User.builder().username(id).password(pw).roles(roles.toArray(new String[0])).build();
//				return new InMemoryUserDetailsManager(admin);
			} else {
				// 사용자가 없는 경우 예외 또는 null 반환
				return null; // 또는 예외 처리
			}
		} catch (Exception e) {
			// Firestore 작업에서 예외 처리
			e.printStackTrace(); // 예외 처리 방법을 적절하게 수정하십시오.
			return null; // 또는 예외 처리
		}
	}
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
      }
	
}
