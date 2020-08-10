import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttergram/Components/Bottom_Bar.dart';
import 'package:fluttergram/Components/Post_Grid.dart';
import 'package:fluttergram/Components/constants.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.black,
          child: Text(
            userdata.getUserName(),
            style: kAppBarTExtStyle,
          ),
        ),
      ),
      body: Column(
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
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
