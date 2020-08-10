import 'package:flutter/cupertino.dart';

class UserData {
  String name = 'Sample Name';
  String _username;
  String _password;
  Image profilePic = Image.network(
      'https://qph.fs.quoracdn.net/main-thumb-80688729-200-euvvkwdkkaxmrufugouqlgiyvmwxfflz.jpeg');
  String aboutMe = 'Sample About Me';
  List<Image> posts = [];

  String getName() {
    return name;
  }

  String getUserName() {
    return _username;
  }

  String getPassword() {
    return _password;
  }

  Image getDP() {
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

  String getAboutMe() {
    return aboutMe;
  }

  void setAboutMe(String aboutMeInput) {
    aboutMe = aboutMeInput;
  }

  void setName(String Name) {
    name = Name;
  }

  void uploadPost(Image value) {
    posts.add(value);
  }

  List<Image> getPosts() {
    return posts;
  }

  int listsize() {
    return posts.length;
  }
}
