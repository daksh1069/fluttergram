import 'package:flutter/material.dart';
import 'Sign_Up.dart';
import 'package:fluttergram/Components/constants.dart';
import 'package:fluttergram/Components/Posts_Template.dart';
import 'package:fluttergram/Components/User_DataBase.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';
import 'package:fluttergram/Components/Bottom_Bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'FlutterGram',
            style: kAppBarTExtStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PostCard(userInfo: userdata, caption: 'NYC Wallpaper'),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
