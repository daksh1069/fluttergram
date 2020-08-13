import 'package:flutter/material.dart';
import 'package:fluttergram/Components/Bottom_Bar.dart';
import 'package:fluttergram/Components/constants.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';

class Appbar extends StatefulWidget {
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return appBar();
  }
}

appBar() {
  if (index == 0) {
    return AppBar(
      title: Center(
        child: Text(
          'FlutterGram',
          style: kAppBarTExtStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  } else if (index == 2) {
    return AppBar(
      title: Center(
        child: Text(
          'Add A Post',
          style: kAppBarTExtStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  } else if (index == 3) {
    return AppBar(
      title: Center(
        child: Text(
          'Activity',
          style: kAppBarTExtStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  } else if (index == 4) {
    return AppBar(
      title: Center(
        child: Text(
          userdata.getUserName(),
          style: kAppBarTExtStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
