import 'package:fitnesshub/auth/main_page.dart';
import 'package:fitnesshub/pages/home_page.dart';
import 'package:fitnesshub/auth/SignUp.dart';
import 'package:fitnesshub/screen/login_page.dart';
import 'package:fitnesshub/screen/welcome_view.dart';
import 'package:flutter/material.dart';
import 'auth/CreateAccount.dart';
import 'firebase_options.dart';
import 'firebasecurd.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.amber));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeView(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
      ),
    );
  }
}
// UI firebase SQl