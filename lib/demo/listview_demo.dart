import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{
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
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
  }
}