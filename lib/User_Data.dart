import 'package:flutter/cupertino.dart';

class UserData {
  String _username;
  String _password;
  FileImage profilePic;

  String getUserName() {
    return _username;
  }

  String getPassword() {
    return _password;
  }

  FileImage getDP() {
    return profilePic;
  }

  void setUsername(String data) {
    _username = data;
  }

  void setPassword(String data) {
    _password = data;
  }

  String validate(String username) {
    if (username == _username) {
      return _password;
    }
  }
}
