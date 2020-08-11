import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'User_Data.dart';
import 'constants.dart';

class PostCard extends StatelessWidget {
  PostCard({this.userInfo, this.postNumber});
  final List<Image> imagePosted = userdata.getPosts();
  final UserData userInfo;
  final int postNumber;

  @override
  Widget build(BuildContext context) {
    final String name = userInfo.getUserName();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
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
                  userInfo.getPosts()[postNumber],
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Liked !');
                        },
                        child: Icon(
                          FontAwesomeIcons.heart,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Commented !');
                        },
                        child: Icon(
                          FontAwesomeIcons.comment,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Shared !');
                        },
                        child: Icon(
                          FontAwesomeIcons.share,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '$name : ',
                        style: kUserCaptionTextDisplay,
                      ),
                      Text(
                        userInfo.getCaptions()[postNumber],
                        style: kCaptionTextDisplay,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
