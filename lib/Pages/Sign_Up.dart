import 'package:flutter/material.dart';
import '../Components/constants.dart';
import '../Forms/Sign_Up_Form.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  SignUpForm signUp = SignUpForm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'FlutterGram',
            style: kAppBarTExtStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [signUp],
      ),
    );
  }
}
