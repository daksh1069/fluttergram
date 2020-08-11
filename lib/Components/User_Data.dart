import 'package:flutter/cupertino.dart';
import 'package:fluttergram/Components/HomePagePostList.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';

int postnumber = 0;

class UserData {
  String name = 'Sample Name';
  String _username;
  String _password;
  Image profilePic = Image.network(
      'https://qph.fs.quoracdn.net/main-thumb-80688729-200-euvvkwdkkaxmrufugouqlgiyvmwxfflz.jpeg');
  String aboutMe = 'Sample About Me';
  List<Image> posts = [];
  List<String> captions = [];

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
    return '';
  }

  String getAboutMe() {
    return aboutMe;
  }

  void setAboutMe(String aboutMeInput) {
    aboutMe = aboutMeInput;
  }

  void setName(String inputName) {
    name = inputName;
  }

  void uploadPost({Image value, String inputCaption}) {
    captions.add(inputCaption);
    posts.add(value);
    addToPostList(userdata, postnumber);
    postnumber++;
  }

  List<Image> getPosts() {
    return posts;
  }

  List<String> getCaptions() {
    return captions;
  }

  int listsize() {
    return posts.length;
  }
}
