import 'package:flutter/material.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';

class GridPost extends StatefulWidget {
  @override
  _GridPostState createState() => _GridPostState();
}

class _GridPostState extends State<GridPost> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        crossAxisCount: 3,
        children: []);
  }
}
//
//Container(
//child : postDisplayGrid(),
//constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
//),

Image postDisplayGrid() {
  print(userdata.listsize());
  for (int i = 0; i < userdata.listsize(); i++) {
    return userdata.getPosts()[i];
  }
}
