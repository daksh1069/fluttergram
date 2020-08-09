import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'User_Data.dart';
import 'constants.dart';

class PostCard extends StatelessWidget {
  PostCard({this.userInfo, this.caption});
  final Image imagePosted = Image.network(
      'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&auto=format&fit=crop&w=3213&q=80');
  final String caption;
  final UserData userInfo;
  @override
  Widget build(BuildContext context) {
    final String Name = userInfo.getUserName();
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
                  imagePosted,
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
                        '$Name : ',
                        style: kUserCaptionTextDisplay,
                      ),
                      Text(
                        caption,
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
