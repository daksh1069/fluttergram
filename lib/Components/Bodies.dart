import 'package:flutter/material.dart';
import 'package:fluttergram/Components/AppBars.dart';
import 'package:fluttergram/Components/Bottom_Bar.dart';
import 'package:fluttergram/Components/HomePagePostList.dart';
import 'package:fluttergram/Components/Post_Grid.dart';
import 'package:fluttergram/Components/constants.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';
import 'package:fluttergram/Pages/Add_Page.dart';

Widget Body() {
  if (index == 0) {
    return SingleChildScrollView(
      child: Column(
        children: postList() == null
            ? [
                Center(
                  child: Text(
                    '\n\n\n\nNo Post So Far, go to Add and Upload your First Post',
                    style: kAppBarTExtStyle,
                  ),
                ),
              ]
            : postList(),
      ),
    );
  } else if (index == 3) {
    return Text('under Development');
  } else if (index == 2) {
    return AddPage();
  } else if (index == 4) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://qph.fs.quoracdn.net/main-thumb-80688729-200-euvvkwdkkaxmrufugouqlgiyvmwxfflz.jpeg'),
              radius: 40,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              userdata.getName(),
              style: kUserCaptionTextDisplay.copyWith(
                  fontWeight: FontWeight.w900, fontSize: 18),
            ),
            Text(
              ' :  ',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            Text(
              userdata.getAboutMe(),
              style: kUserCaptionTextDisplay.copyWith(fontSize: 15),
            ),
          ],
        ),
        Expanded(
          child: GridPost(),
        ),
      ],
    );
  }
}
