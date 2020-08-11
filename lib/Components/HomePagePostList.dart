import 'package:fluttergram/Components/Posts_Template.dart';
import 'package:fluttergram/Components/User_Data.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';

List<PostCard> list = [];

List<PostCard> postList() {
  if (postList().length == 0) {
    return null;
  }
  return list;
}

void addToPostList(UserData data, int currentPosition) {
  for (int i = currentPosition; i < userdata.listsize(); i++) {
    list.add(
      PostCard(
        userInfo: data,
        postNumber: i,
      ),
    );
  }
}
