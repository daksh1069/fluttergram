import 'package:flutter/material.dart';
import 'package:fluttergram/Components/HomePagePostList.dart';
import 'package:fluttergram/Components/constants.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';
import 'package:fluttergram/Components/Bottom_Bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    userdata.uploadPost(
      Image.network(
          'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&auto=format&fit=crop&w=3213&q=80'),
    );
    userdata.uploadPost(Image.network(
        'https://qph.fs.quoracdn.net/main-thumb-80688729-200-euvvkwdkkaxmrufugouqlgiyvmwxfflz.jpeg'));
    addToPostList(userdata, 'Sample 1', 2);
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
          children: postList(),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
