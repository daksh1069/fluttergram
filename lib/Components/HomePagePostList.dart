import 'package:flutter/material.dart';
import 'package:fluttergram/Components/Posts_Template.dart';
import 'package:fluttergram/Components/User_Data.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';

List<PostCard> list = [
  PostCard(
    userInfo: userdata,
    caption: 'Sample',
    postNumber: 0,
  ),
  PostCard(
    userInfo: userdata,
    caption: 'Sample',
    postNumber: 1,
  ),
];

List<PostCard> postList() {
  return list;
}

List<PostCard> addToPostList(
    UserData data, String funCaption, int currentPosition) {
  for (int i = currentPosition; i < userdata.listsize(); i++) {
    list.add(PostCard(
      userInfo: data,
      caption: funCaption,
      postNumber: i,
    ));
  }
  return list;
}
