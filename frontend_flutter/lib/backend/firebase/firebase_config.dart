import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyASOGxoEYnsgoRv2e8VGhLsDfY0mgyb2EI",
            authDomain: "mobile-devices-n8ilha.firebaseapp.com",
            projectId: "mobile-devices-n8ilha",
            storageBucket: "mobile-devices-n8ilha.firebasestorage.app",
            messagingSenderId: "508904467895",
            appId: "1:508904467895:web:eeab703c79965a075dcc32"));
  } else {
    await Firebase.initializeApp();
  }
}
