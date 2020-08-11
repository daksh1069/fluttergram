import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;

  String setPath(int newIndex) {
    if (newIndex == 0) {
      return '/HomePage';
    } else if (newIndex == 1) {
      return '/Search';
    } else if (newIndex == 2) {
      return '/Add';
    } else if (newIndex == 3) {
      return '/Notification';
    } else if (newIndex == 4) {
      return '/ProfilePage';
    }
    return '';
  }

  void setIndex(int newIndex) {
    String path = setPath(newIndex);
    setState(() {
      index = newIndex;
      Navigator.pushNamed(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text('Add A Post'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text('Notifications'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.device_hub),
          title: Text('Profile'),
        ),
      ],
      currentIndex: index,
      selectedItemColor: Colors.amber[800],
      onTap: setIndex,
    );
  }
}
