import 'package:flutter/material.dart';
import '../Components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/User_Data.dart';
import '../Components/User_DataBase.dart';

UserData userdata = UserData();

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String username;
  String password;
  //Map userDatabase = Map<String, UserData>();
  final _signUpFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signUpFormKey,
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
                labelText: 'Enter a new username',
                labelStyle: kAppBarTExtStyle,
                focusedBorder: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Username Can\'t be Empty';
                }
                username = value;
                userdata.setUsername(value);
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
                labelText: 'Enter a new Password',
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
                userdata.setPassword(value);
                return null;
              },
            ),
          ),
          RaisedButton(
            onPressed: () {
              // Validate returns true if the form is valid, otherwise false.
              if (_signUpFormKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.

                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Processing Request'),
                  ),
                );
                userDataBase(
                  userName: username,
                  userdata: userdata,
                );
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Account Successfully Created'),
                  ),
                );
                Future.delayed(const Duration(milliseconds: 500), () {
                  setState(() {
                    Navigator.pop(context);
                  });
                });
              }
            },
            child: Text('Sign Up'),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
