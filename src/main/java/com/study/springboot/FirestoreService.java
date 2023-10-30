package com.study.springboot;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.FirestoreOptions;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.FileInputStream;
import java.io.IOException;

@Service
public class FirestoreService {
    private Firestore firestore;

    @PostConstruct
    private void initializeFirestore() throws IOException {
        FileInputStream serviceAccount = new FileInputStream("path/to/your/firebase-adminsdk.json");
        FirestoreOptions firestoreOptions = FirestoreOptions.newBuilder()
                .setCredentials(GoogleCredentials.fromStream(serviceAccount))
                .build();

        firestore = firestoreOptions.getService();
    }

    public Firestore getFirestore() {
        return firestore;
    }
}
