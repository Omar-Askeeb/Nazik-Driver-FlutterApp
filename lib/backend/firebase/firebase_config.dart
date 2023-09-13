import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDQ9sHUlXuyKlC863z59XR7uAkcmD5ryCM",
            authDomain: "nazik-389319.firebaseapp.com",
            projectId: "nazik-389319",
            storageBucket: "nazik-389319.appspot.com",
            messagingSenderId: "160183036247",
            appId: "1:160183036247:web:c9c34d454f3d49e8007612"));
  } else {
    await Firebase.initializeApp();
  }
}
