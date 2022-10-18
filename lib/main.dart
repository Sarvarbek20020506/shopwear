import 'package:flutter/material.dart';
import 'package:shopwear/pages/charPage.dart';
import 'package:shopwear/pages/home_page.dart';
import 'package:shopwear/pages/logIn.dart';
import 'package:shopwear/pages/signUp.dart';
import 'package:shopwear/pages/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id : (context) => SplashPage(),
        HomePage.id : (context) =>HomePage(),
        ChatPage.id : (context) => ChatPage(),
        SignUp.id:(context) => SignUp(),
        SignIn.id:(context) => SignIn(),
      },
    );
  }
}

