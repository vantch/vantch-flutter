import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
  }

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('探索'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('地图'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的'),
            ),
          ],
        );
  }
}