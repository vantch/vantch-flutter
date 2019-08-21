import 'package:flutter/material.dart';
import 'package:vantch/demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.2),
        splashColor: Colors.white54,
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor:Colors.grey[100] ,
      appBar: AppBar(
          title: Text('Vantch'),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed'),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black87,
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.local_bar)),
              Tab(icon: Icon(Icons.local_library)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.local_bar, size: 138.0, color: Colors.black12),
            Icon(Icons.local_library, size: 138.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}