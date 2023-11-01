package com.study.springboot.config;

import java.io.FileInputStream;

import org.springframework.stereotype.Service;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

@Service
public class FirebaseInitializer {
    public void initializeFirebaseApp() {
        try {
        	FileInputStream serviceAccount =
        			new FileInputStream("./serviceAccountKey.json");

        			FirebaseOptions options = new FirebaseOptions.Builder()
        			  .setCredentials(GoogleCredentials.fromStream(serviceAccount))
        			  .setDatabaseUrl("https://pro4-3a50f-default-rtdb.firebaseio.com")
        			  .build();

        			FirebaseApp.initializeApp(options);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
