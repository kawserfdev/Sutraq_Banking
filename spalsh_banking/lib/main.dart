import 'package:flutter/material.dart';
import 'package:spalsh_banking/Ui/onbording/Splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: FirebaseOptions(
    //     apiKey: "AIzaSyBaS7UD_ZW2jTjs7Jz43Vpb-aEscwWU_7E",
    //     appId: "1:441377699260:web:ae69dc292cdc9ef499a7b9",
    //     messagingSenderId: "441377699260",
    //     projectId: "splash-banking"),
  );
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}
