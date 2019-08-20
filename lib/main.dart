import 'package:flutter/material.dart';
import './model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(
           posts[index].title,
           style: Theme.of(context).textTheme.title, 
          ),
          Text(
           posts[index].author,
           style: Theme.of(context).textTheme.subhead, 
          ),
          SizedBox(height: 16.0,),
          Text(
            posts[index].description,
            style: Theme.of(context).textTheme.body1,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 8.0,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[100] ,
      appBar: AppBar(
          title: Text('Vantch'),
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
      );
  }
}

// class Hello extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Hello Flutter',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(
//           fontSize: 40.0,
//           fontWeight: FontWeight.bold,
//           color: Colors.black87,
//         ),
//       ),
//     );
//   }
// }