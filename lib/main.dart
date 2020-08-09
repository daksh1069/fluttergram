import 'package:flutter/material.dart';
import 'package:fluttergram/Pages/Log_In.dart';
import 'Pages/Sign_Up.dart';
import 'package:fluttergram/Pages/HomePage.dart';

void main() {
  runApp(FlutterGram());
}

class FlutterGram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFF9F8F9),
        scaffoldBackgroundColor: Color(0xFFCAC9CD),
      ),
      initialRoute: '/LogIn',
      routes: {
        '/LogIn': (context) => LogIn(),
        '/SignUp': (context) => SignUp(),
        '/HomePage': (context) => Home(),
      },
    );
  }
}
