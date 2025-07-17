import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDPD-pmG_b1_ufTmlq7MK8nsm3mzlzHsZI",
            authDomain: "psicoapp-2025.firebaseapp.com",
            projectId: "psicoapp-2025",
            storageBucket: "psicoapp-2025.firebasestorage.app",
            messagingSenderId: "716823179234",
            appId: "1:716823179234:web:309be39f9ab44ed3d953bb",
            measurementId: "G-CPVH6DW1LQ"));
  } else {
    await Firebase.initializeApp();
  }
}
