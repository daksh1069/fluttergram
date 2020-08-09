import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'User_Data.dart';
import 'User_DataBase.dart';
import 'constants.dart';

class PostCard extends StatelessWidget {
  PostCard({this.userInfo, this.caption});
  final Image imagePosted = Image.network(
      'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&auto=format&fit=crop&w=3213&q=80');
  final String caption;
  final UserData userInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userInfo.getUserName(),
              style: kUsernamePostDisplay,
            ),
            imagePosted,
            BottomAppBar(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(FontAwesomeIcons.heart),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(FontAwesomeIcons.comment),
                  SizedBox(
                    width: 250.0,
                  ),
                  Icon(FontAwesomeIcons.share),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
