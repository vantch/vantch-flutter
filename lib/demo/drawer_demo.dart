import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Vantch', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.black87),),
                accountEmail: Text('ui@vantch.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://vantch.com/wp-content/uploads/2019/08/img_smallpr_02.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight,
                      ),

                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message ,color: Colors.black26, size: 24.0,),
                title: Text('Messages', textAlign: TextAlign.left,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.favorite ,color: Colors.black26, size: 24.0,),
                title: Text('Favorite', textAlign: TextAlign.left,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.settings ,color: Colors.black26, size: 24.0,),
                title: Text('Settings', textAlign: TextAlign.left,),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}