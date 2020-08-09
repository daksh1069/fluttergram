import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
//          CustomScrollView(
//            scrollDirection: Axis.vertical,
//            shrinkWrap: true,
//            slivers: [
//              SliverGrid(
//                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                  maxCrossAxisExtent: 200.0,
//                  mainAxisSpacing: 10.0,
//                  crossAxisSpacing: 10.0,
//                  childAspectRatio: 4.0,
//                ),
//                delegate: SliverChildBuilderDelegate(
//                  (BuildContext context, int index) {
//                    return Container(
//                      alignment: Alignment.center,
//                      color: Colors.teal[100 * (index % 9)],
//                      child: Text('Grid Item $index'),
//                    );
//                  },
//                  childCount: 20,
//                ),
//              ),
//              SliverFixedExtentList(
//                itemExtent: 50.0,
//                delegate: SliverChildBuilderDelegate(
//                  (BuildContext context, int index) {
//                    return Container(
//                      alignment: Alignment.center,
//                      color: Colors.lightBlue[100 * (index % 9)],
//                      child: Text('List Item $index'),
//                    );
//                  },
//                ),
//              ),
//            ],
//          )
        ],
      ),
    );
  }
}
