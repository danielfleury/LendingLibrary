import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBV2ROW03-QgyVDNglvToEcC-v_8A1o6_Q",
            authDomain: "bcrplendinglibrary.firebaseapp.com",
            projectId: "bcrplendinglibrary",
            storageBucket: "bcrplendinglibrary.appspot.com",
            messagingSenderId: "701534820221",
            appId: "1:701534820221:web:e581e0c91a956abc719e14",
            measurementId: "G-7F42CQ263T"));
  } else {
    await Firebase.initializeApp();
  }
}
