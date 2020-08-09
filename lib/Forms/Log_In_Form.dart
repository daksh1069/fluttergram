import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttergram/Components/User_DataBase.dart';
import 'package:fluttergram/Pages/HomePage.dart';

class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  String username;
  String password;
  final _logInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _logInFormKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                focusColor: Colors.black,
                icon: Icon(
                  FontAwesomeIcons.child,
                  color: Colors.black,
                ),
                border: const OutlineInputBorder(),
                labelText: 'Enter your username',
                labelStyle: kAppBarTExtStyle,
                focusedBorder: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Username Can\'t be Empty';
                }
                username = value;
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  FontAwesomeIcons.asterisk,
                  color: Colors.black,
                ),
                labelText: 'Enter your Password',
                labelStyle: kAppBarTExtStyle,
                focusColor: Colors.black,
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              obscureText: true,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value.isEmpty) {
                  return 'Password Field Can\'t be Empty';
                }
                password = value;
                return null;
              },
            ),
          ),
          RaisedButton(
            onPressed: () {
              // Validate returns true if the form is valid, otherwise false.
              if (_logInFormKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.

                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
                if (Validation(userName: username, password: password)) {
                  print('Log In Successful');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                }
              }
            },
            child: Text('Log In'),
          ),
          SizedBox(height: 50),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/SignUp');
            },
            child: Text('New User ? Sign Up here'),
          ),
        ],
      ),
    );
  }
}
