import 'package:flutter/material.dart';
import 'package:fluttergram/User_Data.dart';

Map userDatabase = Map<String, UserData>();

Map UserDataBase({String userName, UserData userdata}) {
  userDatabase[userName] = userdata;
  return userDatabase;
}

bool Validation({String userName, String password}) {
  UserData instance = userDatabase[userName];
  print(instance.getUserName());
  print(instance.getPassword());
  if (instance.getPassword() == password) {
    print('Log in Valid');
    return true;
  }
  print('Log in Invalid');
  return false;
}
