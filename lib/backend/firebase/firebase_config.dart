import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5L5ESiQahhOyrMbOF3EA-4xazpR62vuQ",
            authDomain: "unifest-27c30.firebaseapp.com",
            projectId: "unifest-27c30",
            storageBucket: "unifest-27c30.appspot.com",
            messagingSenderId: "807210725806",
            appId: "1:807210725806:web:b360e2ba97140a76cf183f",
            measurementId: "G-NYSLPB8K22"));
  } else {
    await Firebase.initializeApp();
  }
}
