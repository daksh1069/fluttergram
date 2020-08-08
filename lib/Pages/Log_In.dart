import 'package:flutter/material.dart';
import '../Components/constants.dart';
import '../Forms/Log_In_Form.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  LogInForm login = LogInForm();
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
        children: [login],
      ),
    );
  }
}
