import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3rM0eZQ2ql0uS8YzaP0PsSlgedSMb6Og",
            authDomain: "push-i-o-s-qx30ur.firebaseapp.com",
            projectId: "push-i-o-s-qx30ur",
            storageBucket: "push-i-o-s-qx30ur.appspot.com",
            messagingSenderId: "225018406785",
            appId: "1:225018406785:web:3457564ef6d04b305b6a80"));
  } else {
    await Firebase.initializeApp();
  }
}
