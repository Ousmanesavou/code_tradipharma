import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDQAEdR0FoesuN8MJUC6udj6ycCF7zF_V8",
            authDomain: "tradipharma-300ee.firebaseapp.com",
            projectId: "tradipharma-300ee",
            storageBucket: "tradipharma-300ee.appspot.com",
            messagingSenderId: "906325120790",
            appId: "1:906325120790:web:184b3003127fded5e66237",
            measurementId: "G-PQBB1N1MQZ"));
  } else {
    await Firebase.initializeApp();
  }
}
