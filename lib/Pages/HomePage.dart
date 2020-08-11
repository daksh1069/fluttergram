import 'package:flutter/material.dart';
import 'package:fluttergram/Components/HomePagePostList.dart';
import 'package:fluttergram/Components/constants.dart';
import 'package:fluttergram/Components/Bottom_Bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    setState(() {
      build(context);
    });
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    didUpdateWidget(Home());
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
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

//    userdata.uploadPost(
//      Image.network(
//          'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&auto=format&fit=crop&w=3213&q=80'),
//    );
//    userdata.uploadPost(Image.network(
//        'https://qph.fs.quoracdn.net/main-thumb-80688729-200-euvvkwdkkaxmrufugouqlgiyvmwxfflz.jpeg'));
//    addToPostList(userdata, 'Sample 1', 2);
