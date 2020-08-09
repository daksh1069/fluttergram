import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  void setIndex(int newIndex) {
    setState(() {
      index = newIndex;
      Navigator.pushNamed(context, '/ProfilePage');
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
