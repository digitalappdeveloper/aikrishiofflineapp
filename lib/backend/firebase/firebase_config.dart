import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBXkJ1sKCzsOR675CWrGvqIktkwmWgjsu0",
            authDomain: "smartchat123.firebaseapp.com",
            projectId: "smartchat123",
            storageBucket: "smartchat123.firebasestorage.app",
            messagingSenderId: "868360876651",
            appId: "1:868360876651:web:08f23b04c5e40551f4372e"));
  } else {
    await Firebase.initializeApp();
  }
}
